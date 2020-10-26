import 'package:dr_family_app/class/DropDownButton.dart';
import 'package:dr_family_app/class/Loading.dart';
import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class informationFromPatient extends StatefulWidget {
  @override
  _informationFromPatientState createState() => _informationFromPatientState();
}

class _informationFromPatientState extends State<informationFromPatient> {

  File _image;

  imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

 
  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thông tin triệu chứng',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        heightFactor: 1.025,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                DropDownButtonPage(),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.white70,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: 10, right: 10),
                    child: TextField(
                      maxLines: 13,
                      decoration: InputDecoration.collapsed(
                          hintText:
                          "Mô tả sơ bộ triệu chứng (nếu có)"),
                    ),
                  ),
                ),
                
                Text('Hình ảnh mô tả (nếu có)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                GestureDetector(
                  onTap: () {
                    _showPicker(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                      BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: RaisedButton(
                      child: _image != null
                          ? ClipRRect(
                        borderRadius:
                        BorderRadius
                            .circular(20),
                        child: Image.file(
                          _image,
                          width: MediaQuery.of(context).size.width*0.9,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      )
                          : Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius
                                .circular(
                                20)),
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.camera_alt,
                          color:
                          Colors.grey[800],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Loading(),
                ));
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(13.0),
              side: BorderSide(color: Colors.blue)),
          color: Colors.white,
          textColor: Colors.black,
          child: Text(
            'Tìm kiếm bác sĩ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),

    );
  }
}
