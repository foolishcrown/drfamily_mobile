import 'package:dr_family_app/screens/doctor/doctorPrescribingEmergency.dart';
import 'package:dr_family_app/screens/doctor/doctorTab2.dart';
import 'package:dr_family_app/screens/doctor/secret.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:math';

class DoctorGoogleMapEmergency extends StatefulWidget {
  @override
  _DoctorGoogleMapEmergencyState createState() => _DoctorGoogleMapEmergencyState();
}

class _DoctorGoogleMapEmergencyState extends State<DoctorGoogleMapEmergency> {
  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
  GoogleMapController mapController;

  final Geolocator _geolocator = Geolocator();

  Position _currentPosition;
  String _currentAddress;

  final startAddressController = TextEditingController();
  final destinationAddressController = TextEditingController(text: 'Lầu 8,9, Tòa nhà CirCO, 222 Điện Biên Phủ, Quận 3, TP. Hồ Chí Minh, Việt Nam');

  String _startAddress = '';
  String _destinationAddress = '';
  String _placeDistance;

  Set<Marker> markers = {};

  PolylinePoints polylinePoints;
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget _textField({
    TextEditingController controller,
    String label,
    String hint,
    double width,
    Icon prefixIcon,
    Widget suffixIcon,
    Function(String) locationCallback,
  }) {
    return Container(
      width: width * 0.8,
      child: TextField(
        onChanged: (value) {
          locationCallback(value);
        },
        controller: controller,
        decoration: new InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey[400],
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.blue[300],
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.all(15),
          hintText: hint,
        ),
      ),
    );
  }

  // Method for retrieving the current location
  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        _currentPosition = position;
        print('CURRENT POS: $_currentPosition');
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0,
            ),
          ),
        );
      });
      await _getAddress();
    }).catchError((e) {
      print(e);
    });
  }

  // Method for retrieving the address
  _getAddress() async {
    try {
      List<Placemark> p = await _geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "${place.name}, ${place.locality}, ${place.postalCode}, ${place.country}";
        startAddressController.text = _currentAddress;
        _startAddress = _currentAddress;
      });
    } catch (e) {
      print(e);
    }
  }

  // Method for calculating the distance between two places
  Future<bool> _calculateDistance() async {
    try {
      // Retrieving placemarks from addresses
      List<Placemark> startPlacemark =
      await _geolocator.placemarkFromAddress(_startAddress);
      List<Placemark> destinationPlacemark =
      await _geolocator.placemarkFromAddress(_destinationAddress);

      if (startPlacemark != null && destinationPlacemark != null) {
        // Use the retrieved coordinates of the current position,
        // instead of the address if the start position is user's
        // current position, as it results in better accuracy.
        Position startCoordinates = _startAddress == _currentAddress
            ? Position(
            latitude: _currentPosition.latitude,
            longitude: _currentPosition.longitude)
            : startPlacemark[0].position;
        Position destinationCoordinates = destinationPlacemark[0].position;

        // Start Location Marker
        Marker startMarker = Marker(
          markerId: MarkerId('$startCoordinates'),
          position: LatLng(
            startCoordinates.latitude,
            startCoordinates.longitude,
          ),
          infoWindow: InfoWindow(
            title: 'Start',
            snippet: _startAddress,
          ),
          icon: BitmapDescriptor.defaultMarker,
        );

        // Destination Location Marker
        Marker destinationMarker = Marker(
          markerId: MarkerId('$destinationCoordinates'),
          position: LatLng(
            destinationCoordinates.latitude,
            destinationCoordinates.longitude,
          ),
          infoWindow: InfoWindow(
            title: 'Destination',
            snippet: _destinationAddress,
          ),
          icon: BitmapDescriptor.defaultMarker,
        );

        // Adding the markers to the list
        markers.add(startMarker);
        markers.add(destinationMarker);

        print('START COORDINATES: $startCoordinates');
        print('DESTINATION COORDINATES: $destinationCoordinates');

        Position _northeastCoordinates;
        Position _southwestCoordinates;

        // Calculating to check that
        // southwest coordinate <= northeast coordinate
        if (startCoordinates.latitude <= destinationCoordinates.latitude) {
          _southwestCoordinates = startCoordinates;
          _northeastCoordinates = destinationCoordinates;
        } else {
          _southwestCoordinates = destinationCoordinates;
          _northeastCoordinates = startCoordinates;
        }

        // Accommodate the two locations within the
        // camera view of the map
        mapController.animateCamera(
          CameraUpdate.newLatLngBounds(
            LatLngBounds(
              northeast: LatLng(
                _northeastCoordinates.latitude,
                _northeastCoordinates.longitude,
              ),
              southwest: LatLng(
                _southwestCoordinates.latitude,
                _southwestCoordinates.longitude,
              ),
            ),
            100.0,
          ),
        );

        // Calculating the distance between the start and the end positions
        // with a straight path, without considering any route
        // double distanceInMeters = await Geolocator().bearingBetween(
        //   startCoordinates.latitude,
        //   startCoordinates.longitude,
        //   destinationCoordinates.latitude,
        //   destinationCoordinates.longitude,
        // );

        await _createPolylines(startCoordinates, destinationCoordinates);

        double totalDistance = 0.0;

        // Calculating the total distance by adding the distance
        // between small segments
        for (int i = 0; i < polylineCoordinates.length - 1; i++) {
          totalDistance += _coordinateDistance(
            polylineCoordinates[i].latitude,
            polylineCoordinates[i].longitude,
            polylineCoordinates[i + 1].latitude,
            polylineCoordinates[i + 1].longitude,
          );
        }

        setState(() {
          _placeDistance = totalDistance.toStringAsFixed(2);
          print('DISTANCE: $_placeDistance km');
        });

        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }

  // Formula for calculating distance between two coordinates
  // https://stackoverflow.com/a/54138876/11910277
  double _coordinateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  // Create the polylines for showing the route between two places
  _createPolylines(Position start, Position destination) async {
    polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      Secrets.API_KEY, // Google Maps API Key
      PointLatLng(start.latitude, start.longitude),
      PointLatLng(destination.latitude, destination.longitude),
      travelMode: TravelMode.transit,
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 3,
    );
    polylines[id] = polyline;
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {

    // Determining the screen width & height
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Trở về'),
      ),
      key: _scaffoldKey,
      body: Column(
        children: [
          Container(
            // height: height,
            // width: width,
            child: Expanded(
              child: Stack(
                children: <Widget>[
                  // Map View
                  GoogleMap(
                    markers: markers != null ? Set<Marker>.from(markers) : null,
                    initialCameraPosition: _initialLocation,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    mapType: MapType.normal,
                    zoomGesturesEnabled: true,
                    zoomControlsEnabled: false,
                    polylines: Set<Polyline>.of(polylines.values),
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                    },
                  ),
                  // Show zoom buttons
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ClipOval(
                            child: Material(
                              color: Colors.blue[100], // button color
                              child: InkWell(
                                splashColor: Colors.blue, // inkwell color
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Icon(Icons.add),
                                ),
                                onTap: () {
                                  mapController.animateCamera(
                                    CameraUpdate.zoomIn(),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          ClipOval(
                            child: Material(
                              color: Colors.blue[100], // button color
                              child: InkWell(
                                splashColor: Colors.blue, // inkwell color
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Icon(Icons.remove),
                                ),
                                onTap: () {
                                  mapController.animateCamera(
                                    CameraUpdate.zoomOut(),
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Show the place input fields & button for
                  // showing the route
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          width: width * 0.9,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Chỉ đường',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                _textField(
                                    label: 'Địa điểm của bạn',
                                    hint: 'Chọn điểm xuất phát',
                                    prefixIcon: Icon(Icons.looks_one),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.my_location),
                                      onPressed: () {
                                        startAddressController.text =
                                            _currentAddress;
                                        _startAddress = _currentAddress;
                                      },
                                    ),
                                    controller: startAddressController,
                                    width: width,
                                    locationCallback: (String value) {
                                      setState(() {
                                        _startAddress = value;
                                      });
                                    }),
                                SizedBox(height: 10),
                                _textField(

                                    label: 'Nơi Đến',
                                    hint: 'Chọn điểm đến',
                                    prefixIcon: Icon(Icons.looks_two),
                                    controller: destinationAddressController,
                                    width: width,
                                    locationCallback: (String value) {
                                      setState(() {
                                        _destinationAddress = value;
                                      });
                                    }),
                                SizedBox(height: 10),
                                Visibility(
                                  visible:
                                  _placeDistance == null ? false : true,
                                  child: Text(
                                    'Khoảng cách: $_placeDistance km',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                RaisedButton(
                                  onPressed: (_startAddress.isNotEmpty ||
                                      _destinationAddress.isNotEmpty)
                                      ? () async {
                                    setState(() {
                                      if (markers.isNotEmpty)
                                        markers.clear();
                                      if (polylines.isNotEmpty)
                                        polylines.clear();
                                      if (polylineCoordinates.isNotEmpty)
                                        polylineCoordinates.clear();
                                      _placeDistance = null;
                                    });

                                    _calculateDistance()
                                        .then((isCalculated) {
                                      if (isCalculated) {
                                        _scaffoldKey.currentState
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                                'Khoảng cách được tính toán thành công'),
                                          ),
                                        );
                                      } else {
                                        _scaffoldKey.currentState
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                                'Lỗi khi tính toán khoảng cách. Vui lòng nhập địa chỉ chính xác hơn'),
                                          ),
                                        );
                                      }
                                    });
                                  }
                                      : null,
                                  color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Hiển thị tuyến đường'.toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Show current location button
                  SafeArea(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(right: 10.0, bottom: 10.0),
                        child: ClipOval(
                          child: Material(
                            color: Colors.orange[100], // button color
                            child: InkWell(
                              splashColor: Colors.orange, // inkwell color
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(Icons.my_location),
                              ),
                              onTap: () {
                                mapController.animateCamera(
                                  CameraUpdate.newCameraPosition(
                                    CameraPosition(
                                      target: LatLng(
                                        _currentPosition.latitude,
                                        _currentPosition.longitude,
                                      ),
                                      zoom: 18.0,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black12,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: <Widget>[
                    // Container(
                    //   padding: EdgeInsets.all(5),
                    //   child: FlatButton(
                    //     child: Text('Nhắn tin'),
                    //     textColor: Colors.black,
                    //     shape: RoundedRectangleBorder(
                    //         side:
                    //             BorderSide(width: 1, style: BorderStyle.solid),
                    //         borderRadius: BorderRadius.circular(50)),
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             builder: (context) => DoctorMessenger(),
                    //           ));
                    //     },
                    //   ),
                    // ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: FlatButton(
                        child: Text('Hủy'),
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side:
                            BorderSide(width: 1, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: _huy,
                        // onPressed: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => CallPhone(),
                        //       ));
                        // },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: FlatButton(
                        child: Text('Gọi điện'),
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side:
                            BorderSide(width: 1, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          launch("tel://0963852741");
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: FlatButton(
                        child: Text('Đã đến nơi'),
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side:
                            BorderSide(width: 1, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: _daDenNoi,
                        // onPressed: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => CallPhone(),
                        //       ));
                        // },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _daDenNoi() {
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text("Đã đến nơi"),
        content: new Text("Chúc bạn một ngày làm việc vui vẻ!"),
        actions: <Widget>[
          FlatButton(
            child: Text('Đóng'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorPrescribingEmergency(),
                  ));
            },
          )
        ],
      ),
    );
  }
  _huy() {
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text("Hủy khám ngay"),
        content: new Text("Bạn có chắc là muốn hủy khám ngay không!"),
        actions: <Widget>[
          FlatButton(
            child: Text('Đồng ý'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorTab2(),
                  ));
            },
          ),
          FlatButton(
            child: Text('Không'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
