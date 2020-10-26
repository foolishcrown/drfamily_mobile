import 'package:dr_family_app/class/Complete.dart';
import 'package:dr_family_app/class/GioiTinhDropdown.dart';
import 'package:dr_family_app/class/MoiQuanHeDropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

enum GenderSelection { male, female }

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  GenderSelection _character = GenderSelection.male;
  String _date = "not set";
  File _image;
  final List<String> items = <String>[
    'Mối quan hệ',
    'Chồng',
    'Vợ',
    'Con',
    'Ba',
    'Mẹ'
  ];
  final List<String> items2 = <String>['Giới tính', 'Nam', 'Nữ', 'Khác'];
  String selectedItem = 'Mối quan hệ';
  String selectedItem2 = 'Giới tính';

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: MediaQuery.of(context).size.height * 1.1,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 1.05,
                  width: MediaQuery.of(context).size.width,
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 150,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new ExactAssetImage(
                                'assets/picture/https___specials-images.forbesimg.com_imageserve_5dbb4182d85e3000078fddae_0x0.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 48,
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _showPicker(context);
                                },
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Color(0xffFDCF09),
                                  child: _image != null
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          child: Image.file(
                                            _image,
                                            width: 90,
                                            height: 90,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )
                                      : Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          width: 90,
                                          height: 90,
                                          child: Icon(
                                            Icons.camera_alt,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(5),
                                child: TextFormField(
                                  autofocus: true,

                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(13)),
                                    ),
                                    labelText: 'Họ và tên*',
                                    hintText: 'Nhập họ và tên của bạn',
                                    // suffixIcon: Icon(Icons.email)
                                  ),
                                  //validation
                                  validator: (email) {
                                    if (email.isEmpty) {
                                      return 'Vui lòng nhập họ và tên của bạn';
                                    }
                                    return null;
                                  },
                                )),
                            Divider(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    height: 50,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        color: Colors.white,
                                        elevation: 1.0,
                                        onPressed: () {
                                          DatePicker.showDatePicker(context,
                                              showTitleActions: true,
                                              theme: DatePickerTheme(
                                                containerHeight: 210.0,
                                              ),
                                              minTime: DateTime(2018, 3, 5),
                                              maxTime: DateTime(2021, 6, 7),
                                              onConfirm: (date) {
                                            print('confirm $date');
                                            _date =
                                                '${date.day} - ${date.month} - ${date.year} ';
                                            setState(() {});
                                          },
                                              currentTime: DateTime.now(),
                                              locale: LocaleType.en);
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Text('Ngày sinh*  ',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                )),
                                            Icon(
                                              Icons.date_range,
                                              size: 20.0,
                                              color: Colors.lightBlue,
                                            ),
                                            Text(
                                              " $_date",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0),
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        DropDownButtonGioiTinhPage(),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.13,
                                        ),
                                        DropDownButtonQuanHePage(),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: TextFormField(
                                            autofocus: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(13)),
                                              ),
                                              labelText: 'Chiều cao(cm)*',
                                              hintText:
                                                  'Nhập số chiều cao của bạn',
                                            ),
                                            obscureText: false,
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Vui lòng nhập sô chiều cao của bạn';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.13,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: TextFormField(
                                            autofocus: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(13)),
                                              ),
                                              labelText: 'Cân nặng(kg)*',
                                              hintText:
                                                  'Nhập số cân nặng của bạn',
                                            ),
                                            obscureText: false,
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Vui lòng nhập sô cân nặng của bạn';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextFormField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(13)),
                                    ),
                                    labelText: 'Số điện thoại',
                                    hintText: 'Nhập số điện thoại của bạn',
                                    suffixIcon: Icon(Icons.vpn_key)),
                                obscureText: false,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Vui lòng nhập sô điện thoại của bạn';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Divider(),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(5),
                              child: FlatButton(
                                child: Text('Đăng ký'),
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        CustomDialog(
                                      title: "Success",
                                      description: "ĐĂNG KÍ THÀNH CÔNG",
                                      buttonText: "Đóng",
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Row(children: <Widget>[
                      //   Expanded(
                      //       child: Divider(
                      //         height: 30,
                      //         color: Colors.black,
                      //       )),
                      //   Text("Hoặc"),
                      //   Expanded(
                      //       child: Divider(
                      //         height: 30,
                      //         color: Colors.black,
                      //       )),
                      // ]),

                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    ));
    // child: Form(
    //   child: Padding(
    //     padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
    //     child: Container(
    //       height: 1200.0,
    //       width: MediaQuery.of(context).size.width,
    //       key: _formKey,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: <Widget>[
    //          Container(
    //            height: 150,
    //            decoration: new BoxDecoration(
    //              image: new DecorationImage(
    //                image: new ExactAssetImage('assets/picture/https___specials-images.forbesimg.com_imageserve_5dbb4182d85e3000078fddae_0x0.jpg'),
    //                fit: BoxFit.cover,
    //              ),
    //            ),
    //            alignment: Alignment.center,
    //            child: Padding(
    //              padding: const EdgeInsets.only(top:48,),
    //              child: Column(
    //                children: [
    //
    //                  GestureDetector(
    //                    onTap: () {
    //                      _showPicker(context);
    //                    },
    //                    child: CircleAvatar(
    //                      radius: 50,
    //                      backgroundColor: Color(0xffFDCF09),
    //                      child: _image != null
    //                          ? ClipRRect(
    //                        borderRadius: BorderRadius.circular(40),
    //                        child: Image.file(
    //                          _image,
    //                          width: 90,
    //                          height: 90,
    //                          fit: BoxFit.fitHeight,
    //                        ),
    //                      )
    //                          : Container(
    //                        decoration: BoxDecoration(
    //                            color: Colors.grey[200],
    //                            borderRadius: BorderRadius.circular(40)),
    //                        width: 90,
    //                        height: 90,
    //                        child: Icon(
    //                          Icons.camera_alt,
    //                          color: Colors.grey[800],
    //                        ),
    //                      ),
    //                    ),
    //                  ),
    //                ],
    //              ),
    //            ),
    //
    //          ),
    //
    //
    //           // Add TextFormFields and RaisedButton here.
    //           Divider(),
    //           TextFormField(
    //             style: TextStyle(fontSize: 15),
    //             decoration: InputDecoration(
    //               labelText: 'Nhập tên*',
    //               focusedBorder: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(25.0),
    //                 borderSide: BorderSide(
    //                   color: Colors.blue,
    //                 ),
    //               ),
    //             ),
    //             validator: (value) {
    //               if (value.isEmpty) {
    //                 return 'Please enter some text';
    //               }
    //               return null;
    //             },
    //           ),
    //           Divider(),
    //           DropdownButton<String>(
    //             value: selectedItem,
    //
    //             onChanged: (String string) => setState(() => selectedItem = string),
    //             selectedItemBuilder: (BuildContext context) {
    //               return items.map<Widget>((String item) {
    //                 return Text(item);
    //               }).toList();
    //             },
    //             items: items.map((String item) {
    //               return DropdownMenuItem<String>(
    //                 child: Text(item),
    //                 value: item,
    //               );
    //             }).toList(),
    //           ),
    //           Divider(),
    //           TextFormField(
    //             style: TextStyle(fontSize: 15),
    //             decoration: InputDecoration(
    //               labelText: 'Số điện thoại*',
    //               focusedBorder: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(25.0),
    //                 borderSide: BorderSide(
    //                   color: Colors.blue,
    //                 ),
    //               ),
    //             ),
    //             validator: (value) {
    //               if (value.isEmpty) {
    //                 return 'Please enter some text';
    //               }
    //               return null;
    //             },
    //           ),
    //           Divider(),
    //           TextFormField(
    //             style: TextStyle(fontSize: 15),
    //             decoration: InputDecoration(
    //               labelText: 'Tuổi*',
    //               focusedBorder: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(25.0),
    //                 borderSide: BorderSide(
    //                   color: Colors.blue,
    //                 ),
    //               ),
    //             ),
    //             validator: (value) {
    //               if (value.isEmpty) {
    //                 return 'Please enter some text';
    //               }
    //               return null;
    //             },
    //           ),
    //           Divider(),
    //
    //          Row(
    //            children: [
    //              Text('Giới tính',
    //                  style: TextStyle(
    //                    fontSize: 15,
    //                  )),
    //              ButtonBar(
    //                alignment: MainAxisAlignment.start,
    //                children: <Widget>[
    //                  Radio(
    //                      value: GenderSelection.male,
    //                      groupValue: _character,
    //                      onChanged: (GenderSelection value) {
    //                        setState(() {
    //                          _character = value;
    //                        });
    //                      }),
    //                  Text('Nam'),
    //                  SizedBox(
    //                    width: 20,
    //                  ),
    //                  Radio(
    //                      value: GenderSelection.female,
    //                      groupValue: _character,
    //                      onChanged: (GenderSelection value) {
    //                        setState(() {
    //                          _character = value;
    //                        });
    //                      }),
    //                  Text('Nữ'),
    //                ],
    //              ),
    //            ],
    //          ),
    //           SizedBox(height: 10),
    //           Text('Date of birth*',
    //               style: TextStyle(
    //                 fontSize: 20,
    //               )),
    //           RaisedButton(
    //               shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(5.0)),
    //               color: Colors.white,
    //               elevation: 1.0,
    //               onPressed: () {
    //                 DatePicker.showDatePicker(context,
    //                     showTitleActions: true,
    //                     theme: DatePickerTheme(
    //                       containerHeight: 210.0,
    //                     ),
    //                     minTime: DateTime(2018, 3, 5),
    //                     maxTime: DateTime(2021, 6, 7), onConfirm: (date) {
    //                   print('confirm $date');
    //                   _date = '${date.day} - ${date.month} - ${date.year} ';
    //                   setState(() {});
    //                 }, currentTime: DateTime.now(), locale: LocaleType.en);
    //               },
    //               child: Row(
    //                 children: <Widget>[
    //                   Icon(
    //                     Icons.date_range,
    //                     size: 20.0,
    //                     color: Colors.lightBlue,
    //                   ),
    //                   Text(
    //                     " $_date",
    //                     style: TextStyle(color: Colors.black, fontSize: 20.0),
    //                   ),
    //                 ],
    //               )),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(vertical: 16.0),
    //             child: RaisedButton(
    //               onPressed: () {
    //                 // Validate returns true if the form is valid, or false
    //                 // otherwise.
    //                 if (_formKey.currentState.validate()) {
    //                   // If the form is valid, display a Snackbar.
    //                   Scaffold.of(context).showSnackBar(
    //                       SnackBar(content: Text('Processing Data')));
    //                 }
    //               },
    //               child: Text('Submit'),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
  }
}
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 16.0),
// child: RaisedButton(
// onPressed: () {
// // Validate returns true if the form is valid, or false
// // otherwise.
// if (_formKey.currentState.validate()) {
// // If the form is valid, display a Snackbar.
// Scaffold.of(context).showSnackBar(
// SnackBar(content: Text('Processing Data')));
// }
// },
// child: Text('Submit'),
// ),
// ),
