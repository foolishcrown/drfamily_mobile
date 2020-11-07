import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';

import 'doctorAppointmentSchedule.dart';
import 'doctorEmergency.dart';
import 'doctorMedicalRequest.dart';
import 'package:flutter/material.dart';

import 'doctorNavigationDrawer.dart';
import 'doctorRequestDetail.dart';

class DoctorHome extends StatefulWidget {
  @override
  _DoctorHomeState createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Card(
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              subtitle: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              AssetImage('assets/images/benhnhannu.jpg'),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Text(
                      'Nguyễn Lê Phương Hạnh ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_location,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('263 Khánh Hội, P5, Q4, TP. Hồ Chí Minh '),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_time,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('5:00 A.M - 20/11/2020'),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.transfer_within_a_station,
                                  color: Color.fromRGBO(78, 201, 228, 1),
                                ),
                                padding: EdgeInsets.only(right: 5, bottom: 5),
                              ),
                              Text('13 km'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_box,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text(' Bị cảm sốt'),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorRequestDetail(),
                    ));
              },
            ),
          ),
          Card(
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              subtitle: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              AssetImage('assets/images/benhnhannu2.jpg'),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Text(
                      'Trần Thùy Trang ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_location,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('263 Khánh Hội, P5, Q4, TP. Hồ Chí Minh '),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_time,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('4:00 A.M - 21/11/2020'),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.transfer_within_a_station,
                                  color: Color.fromRGBO(78, 201, 228, 1),
                                ),
                                padding: EdgeInsets.only(right: 5, bottom: 5),
                              ),
                              Text('13 km'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_box,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text(' Bị cảm sốt'),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorRequestDetail(),
                    ));
              },
            ),
          ),
          Card(
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              subtitle: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              AssetImage('assets/images/benhnhannu3.jpg'),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Text(
                      'Nguyễn Kim Liên ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_location,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('263 Khánh Hội, P5, Q4, TP. Hồ Chí Minh '),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_time,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('2:00 A.M - 22/11/2020'),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.transfer_within_a_station,
                                  color: Color.fromRGBO(78, 201, 228, 1),
                                ),
                                padding: EdgeInsets.only(right: 5, bottom: 5),
                              ),
                              Text('13 km'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_box,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text(' Bị cảm sốt'),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorRequestDetail(),
                    ));
              },
            ),
          ),
          Card(
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              subtitle: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              AssetImage('assets/images/benhnhannu4.jpg'),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Text(
                      'Trần Văn Mai ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_location,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('263 Khánh Hội, P5, Q4, TP. Hồ Chí Minh '),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.access_time,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text('1:00 A.M - 23/11/2020'),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.transfer_within_a_station,
                                  color: Color.fromRGBO(78, 201, 228, 1),
                                ),
                                padding: EdgeInsets.only(right: 5, bottom: 5),
                              ),
                              Text('13 km'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add_box,
                            color: Color.fromRGBO(78, 201, 228, 1),
                          ),
                          padding: EdgeInsets.only(right: 5, bottom: 5),
                        ),
                        Text(' Bị cảm sốt'),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorRequestDetail(),
                    ));
              },
            ),
          ),
        ],
      ),
    ));
  }
}
