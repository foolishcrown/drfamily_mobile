import 'dart:io';

import 'package:dr_family_app/class/Doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/screens/patients/pacomponents/CalendarOrderScreen.dart';
import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationScreen.dart';
import 'package:image_picker/image_picker.dart';



enum PaySelection { momo, viettelpay, visa }

class PayCheckHistory extends StatefulWidget {
  @override
  _PayCheckState createState() => _PayCheckState();
}

class _PayCheckState extends State<PayCheckHistory> {
  List<Doctor> doctors = [
    Doctor(
        name: 'Ths.Bs.CKI Nguyễn Kim Dung',
        experient: "bệnh viện mắt TP.HCM.",
        education: '(Nhãn khoa)',
        img: 'assets/picture/Capture1.PNG',
        fee: '450.000',
        rate: '4.8'),
  ];

  PaySelection _character = PaySelection.momo;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
      'Thông tin đặt hẹn',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    ),
      body: SingleChildScrollView(
        // Day se la noi lay du lieu tu phia list quotes
        child: Transform.scale(
          scale: 1,
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 1.7,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: SafeArea(
                  child: Stack(children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.0125,
                      width: MediaQuery.of(context).size.width,

                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Column(
                          children: [
                            Container(
                              width: 400,
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => doctorInform()));
                                },
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(doctors[0].img),
                                  radius: 30,
                                ),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      doctors[0].name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      'Chuyên khoa: ' + doctors[0].education,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      'Làm việc tại: ' + doctors[0].experient,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20, left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'Thời gian đặt lịch      ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Icon(FontAwesome5.calendar_alt),
                                          Text(
                                            '  16/10/2020 ',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black87),
                                          ),
                                          SizedBox(
                                            width: 60,
                                          ),
                                          Icon(FontAwesome5.clock),
                                          Text(
                                            '  14:20 ',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 10, bottom: 20),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(children: <Widget>[
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            FontAwesome5.user,
                                            size: 15,
                                          ),
                                          Text(
                                            ' Khách hàng',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ]),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'Tên: Mai Nguyễn Nhật A ',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      fontStyle: FontStyle.italic,
                                                      color: Colors.black87),
                                                ),
                                                Text(
                                                  'Giới tính: Nam \nTuổi: 22 \n Mối quan hệ: Tôi',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontStyle: FontStyle.italic,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black87),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  'Hồ sơ bệnh án (nếu có)',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      fontStyle: FontStyle.italic,
                                                      color: Colors.black87),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    _showPicker(context);
                                                  },
                                                  child: Container(
                                                    width:  MediaQuery.of(context).size.width*0.86,
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
                                                          width: MediaQuery.of(context).size.width*0.86,
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
                                                Card(
                                                  margin: EdgeInsets.only(
                                                      top: 10, right: 20),
                                                  color: Colors.white70,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20, left: 10, right: 10),
                                                    child: TextField(
                                                      maxLines: 10,
                                                      decoration:
                                                      InputDecoration.collapsed(
                                                          hintText:
                                                          "Cảm ho, sốt cao liên tục, khó ăn uống\nCó dấu hiệu sốt xuất huyết"),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ])
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 0, bottom: 20, right: 10),
                                child: Column(
                                  children: <Widget>[
                                    Text('Hình thức thanh toán',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  SizedBox(height: 5,),
                                  Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width*0.35,

                                          ),
                                          Image.asset(
                                            'assets/picture/download (1).png',
                                            width: 30,
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Ví Momo',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    // RadioListTile(
                                    //     value: PaySelection.momo,
                                    //     title: Row(
                                    //       children: <Widget>[
                                    //         SizedBox(
                                    //           width: 120,
                                    //         ),
                                    //         Image.asset(
                                    //           'assets/picture/download (1).png',
                                    //           width: 30,
                                    //           height: 30,
                                    //         ),
                                    //         SizedBox(
                                    //           width: 10,
                                    //         ),
                                    //         Text(
                                    //           'Ví Momo',
                                    //           style: TextStyle(
                                    //               fontSize: 15,
                                    //               fontWeight: FontWeight.bold),
                                    //         )
                                    //       ],
                                    //     ),
                                    //     groupValue: _character,
                                    //     activeColor: Colors.blue,
                                    //     onChanged: (PaySelection value) {
                                    //       setState(() {
                                    //         _character = value;
                                    //       });
                                    //     }),
                                    // RadioListTile(
                                    //     value: PaySelection.viettelpay,
                                    //     title: Row(
                                    //       children: <Widget>[
                                    //         SizedBox(
                                    //           width: 120,
                                    //         ),
                                    //         Image.asset(
                                    //           'assets/picture/download.jpg',
                                    //           width: 30,
                                    //           height: 30,
                                    //         ),
                                    //         SizedBox(
                                    //           width: 10,
                                    //         ),
                                    //         Text(
                                    //           'Ví ViettelPay',
                                    //           style: TextStyle(
                                    //               fontSize: 15,
                                    //               fontWeight: FontWeight.bold),
                                    //         )
                                    //       ],
                                    //     ),
                                    //     activeColor: Colors.blue,
                                    //     groupValue: _character,
                                    //     onChanged: (PaySelection value) {
                                    //       setState(() {
                                    //         _character = value;
                                    //       });
                                    //     }),
                                    // RadioListTile(
                                    //     value: PaySelection.visa,
                                    //     title: Row(
                                    //       children: <Widget>[
                                    //         SizedBox(
                                    //           width: 120,
                                    //         ),
                                    //         Image.asset(
                                    //           'assets/picture/536.png',
                                    //           width: 30,
                                    //           height: 30,
                                    //         ),
                                    //         SizedBox(
                                    //           width: 10,
                                    //         ),
                                    //         Text(
                                    //           'Thẻ Visa',
                                    //           style: TextStyle(
                                    //               fontSize: 15,
                                    //               fontWeight: FontWeight.bold),
                                    //         )
                                    //       ],
                                    //     ),
                                    //     groupValue: _character,
                                    //     activeColor: Colors.blue,
                                    //     onChanged: (PaySelection value) {
                                    //       setState(() {
                                    //         _character = value;
                                    //       });
                                    //     }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Positioned(
                    //     top: 89, //89
                    //
                    //     width: MediaQuery.of(context).size.width,
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(right: 10, left: 10),
                    //       child: Container(
                    //           width: MediaQuery.of(context).size.width,
                    //           decoration: BoxDecoration(
                    //             color: Colors.white70,
                    //             borderRadius: BorderRadius.circular(12),
                    //             border: Border.all(
                    //               width: 1,
                    //             ),
                    //           ),
                    //           child: Padding(
                    //             padding: const EdgeInsets.only(top: 20, left: 10),
                    //             child: Column(
                    //               children: [
                    //                 Text(
                    //                   'Thời gian đặt lịch      ',
                    //                   style: TextStyle(
                    //                       fontWeight: FontWeight.bold,
                    //                       fontSize: 18,
                    //                       color: Colors.indigo),
                    //                 ),
                    //                 Padding(
                    //                   padding: const EdgeInsets.only(bottom: 10),
                    //                   child: Row(
                    //                     children: <Widget>[
                    //                       SizedBox(
                    //                         width: 50,
                    //                       ),
                    //                       Icon(FontAwesome5.calendar_alt),
                    //                       Text(
                    //                         '  16/10/2020 ',
                    //                         textAlign: TextAlign.left,
                    //                         style: TextStyle(
                    //                             fontSize: 15,
                    //                             fontWeight: FontWeight.bold,
                    //                             fontStyle: FontStyle.italic,
                    //                             color: Colors.black87),
                    //                       ),
                    //                       SizedBox(
                    //                         width: 60,
                    //                       ),
                    //                       Icon(FontAwesome5.clock),
                    //                       Text(
                    //                         '  14:20 ',
                    //                         textAlign: TextAlign.left,
                    //                         style: TextStyle(
                    //                             fontSize: 15,
                    //                             fontWeight: FontWeight.bold,
                    //                             fontStyle: FontStyle.italic,
                    //                             color: Colors.black87),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           )),
                    //     )),
                    // Positioned(
                    //   top: 178, //200
                    //
                    //   width: MediaQuery.of(context).size.width,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(left: 10, right: 10),
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         color: Colors.white70,
                    //         borderRadius: BorderRadius.circular(12),
                    //         border: Border.all(
                    //           width: 1,
                    //         ),
                    //       ),
                    //       child: Padding(
                    //           padding: const EdgeInsets.only(
                    //               top: 20, left: 10, bottom: 20),
                    //           child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Row(children: <Widget>[
                    //                   SizedBox(
                    //                     width: 10,
                    //                   ),
                    //                   Icon(
                    //                     FontAwesome5.user,
                    //                     size: 15,
                    //                   ),
                    //                   Text(
                    //                     ' Khách hàng',
                    //                     style: TextStyle(
                    //                         fontWeight: FontWeight.bold,
                    //                         fontSize: 20),
                    //                   ),
                    //                 ]),
                    //                 Padding(
                    //                   padding: EdgeInsets.only(left: 10),
                    //                   child: Column(
                    //                       crossAxisAlignment:
                    //                           CrossAxisAlignment.start,
                    //                       children: <Widget>[
                    //                         SizedBox(
                    //                           height: 5,
                    //                         ),
                    //                         Text(
                    //                           'Tên: Mai Nguyễn Nhật A ',
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                               fontSize: 15,
                    //                               fontWeight: FontWeight.bold,
                    //                               fontStyle: FontStyle.italic,
                    //                               color: Colors.black87),
                    //                         ),
                    //                         Text(
                    //                           'Giới tính: Nam \nTuổi: 22 \n Mối quan hệ: Tôi',
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                               fontSize: 13,
                    //                               fontStyle: FontStyle.italic,
                    //                               fontWeight: FontWeight.bold,
                    //                               color: Colors.black87),
                    //                         ),
                    //                         SizedBox(
                    //                           height: 20,
                    //                         ),
                    //                         Text(
                    //                           'Hồ sơ bệnh án (nếu có)',
                    //                           textAlign: TextAlign.left,
                    //                           style: TextStyle(
                    //                               fontSize: 15,
                    //                               fontWeight: FontWeight.bold,
                    //                               fontStyle: FontStyle.italic,
                    //                               color: Colors.black87),
                    //                         ),
                    //                         GestureDetector(
                    //                           onTap: () {
                    //                             _showPicker(context);
                    //                           },
                    //                           child: Container(
                    //                             width: 300,
                    //                             height: 200,
                    //                             decoration: BoxDecoration(
                    //                               color: Colors.grey,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(12),
                    //                               border: Border.all(
                    //                                 width: 1,
                    //                               ),
                    //                             ),
                    //                             child: RaisedButton(
                    //                               child: _image != null
                    //                                   ? ClipRRect(
                    //                                       borderRadius:
                    //                                           BorderRadius.circular(
                    //                                               20),
                    //                                       child: Image.file(
                    //                                         _image,
                    //                                         width: 200,
                    //                                         height: 400,
                    //                                         fit: BoxFit.cover,
                    //                                       ),
                    //                                     )
                    //                                   : Container(
                    //                                       decoration: BoxDecoration(
                    //                                           color: Colors.white,
                    //                                           borderRadius:
                    //                                               BorderRadius
                    //                                                   .circular(20)),
                    //                                       width: 50,
                    //                                       height: 50,
                    //                                       child: Icon(
                    //                                         Icons.camera_alt,
                    //                                         color: Colors.grey[800],
                    //                                       ),
                    //                                     ),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                         Card(
                    //                           margin:
                    //                               EdgeInsets.only(top: 10, right: 20),
                    //                           color: Colors.white70,
                    //                           child: Padding(
                    //                             padding: EdgeInsets.only(
                    //                                 top: 20, left: 10, right: 10),
                    //                             child: TextField(
                    //                               maxLines: 10,
                    //                               decoration: InputDecoration.collapsed(
                    //                                   hintText:
                    //                                       "Mô tả sơ bộ triệu chứng (nếu có)"),
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ]),
                    //                 ),
                    //               ])),
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //     top: 778, //769
                    //
                    //     width: MediaQuery.of(context).size.width,
                    //     child: Padding(
                    //       padding:
                    //           const EdgeInsets.only(left: 10, right: 10, bottom: 300),
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //           color: Colors.white70,
                    //           borderRadius: BorderRadius.circular(12),
                    //           border: Border.all(
                    //             width: 1,
                    //           ),
                    //         ),
                    //         child: Padding(
                    //           padding: const EdgeInsets.only(
                    //               top: 0, left: 0, bottom: 20, right: 10),
                    //           child: Column(
                    //             children: <Widget>[
                    //               RadioListTile(
                    //                   value: PaySelection.momo,
                    //                   title: Row(
                    //                     children: <Widget>[
                    //                       SizedBox(
                    //                         width: 120,
                    //                       ),
                    //                       Image.asset(
                    //                         'assets/picture/download (1).png',
                    //                         width: 30,
                    //                         height: 30,
                    //                       ),
                    //                       SizedBox(
                    //                         width: 10,
                    //                       ),
                    //                       Text(
                    //                         'Ví Momo',
                    //                         style: TextStyle(
                    //                             fontSize: 15,
                    //                             fontWeight: FontWeight.bold),
                    //                       )
                    //                     ],
                    //                   ),
                    //                   groupValue: _character,
                    //                   activeColor: Colors.blue,
                    //                   onChanged: (PaySelection value) {
                    //                     setState(() {
                    //                       _character = value;
                    //                     });
                    //                   }),
                    //               RadioListTile(
                    //                   value: PaySelection.viettelpay,
                    //                   title: Row(
                    //                     children: <Widget>[
                    //                       SizedBox(
                    //                         width: 120,
                    //                       ),
                    //                       Image.asset(
                    //                         'assets/picture/download.jpg',
                    //                         width: 30,
                    //                         height: 30,
                    //                       ),
                    //                       SizedBox(
                    //                         width: 10,
                    //                       ),
                    //                       Text(
                    //                         'Ví ViettelPay',
                    //                         style: TextStyle(
                    //                             fontSize: 15,
                    //                             fontWeight: FontWeight.bold),
                    //                       )
                    //                     ],
                    //                   ),
                    //                   activeColor: Colors.blue,
                    //                   groupValue: _character,
                    //                   onChanged: (PaySelection value) {
                    //                     setState(() {
                    //                       _character = value;
                    //                     });
                    //                   }),
                    //               RadioListTile(
                    //                   value: PaySelection.visa,
                    //                   title: Row(
                    //                     children: <Widget>[
                    //                       SizedBox(
                    //                         width: 120,
                    //                       ),
                    //                       Image.asset(
                    //                         'assets/picture/536.png',
                    //                         width: 30,
                    //                         height: 30,
                    //                       ),
                    //                       SizedBox(
                    //                         width: 10,
                    //                       ),
                    //                       Text(
                    //                         'Thẻ Visa',
                    //                         style: TextStyle(
                    //                             fontSize: 15,
                    //                             fontWeight: FontWeight.bold),
                    //                       )
                    //                     ],
                    //                   ),
                    //                   groupValue: _character,
                    //                   activeColor: Colors.blue,
                    //                   onChanged: (PaySelection value) {
                    //                     setState(() {
                    //                       _character = value;
                    //                     });
                    //                   }),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     )),
                  ])),
            ),
          ),
        ),
      ),
    );

    // return SingleChildScrollView(
    //   child: SizedBox(
    //     height: 850.0,
    //     width: 500.0,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: <Widget>[
    //         SizedBox(
    //           height: 20,
    //         ),
    //         ListTile(
    //           onTap: () {
    //             Navigator.push(context,
    //                 MaterialPageRoute(builder: (context) => doctorInform()));
    //           },
    //           leading: CircleAvatar(
    //             backgroundImage: AssetImage(doctors[0].img),
    //             radius: 30,
    //           ),
    //           title: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Text(
    //                 doctors[0].name,
    //                 textAlign: TextAlign.left,
    //                 style: TextStyle(
    //                     fontSize: 20,
    //                     fontStyle: FontStyle.italic,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.black87),
    //               ),
    //               Text(
    //                 'Làm việc tại: ' + doctors[0].experient,
    //                 textAlign: TextAlign.left,
    //                 style: TextStyle(
    //                     fontSize: 15,
    //                     fontStyle: FontStyle.italic,
    //                     color: Colors.black87),
    //               ),
    //               Text(
    //                 'Trình độ: ' + doctors[0].education,
    //                 textAlign: TextAlign.left,
    //                 style: TextStyle(
    //                     fontSize: 15,
    //                     fontStyle: FontStyle.italic,
    //                     color: Colors.black87),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Divider(
    //           color: Colors.green,
    //           thickness: 2,
    //         ),
    //         Text(
    //           'Thời gian đặt lịch\n',
    //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    //         ),
    //         Row(
    //           children: <Widget>[
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(FontAwesome5.calendar_alt),
    //             Text(
    //               '  16/10/2020 ',
    //               textAlign: TextAlign.left,
    //               style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.bold,
    //                   fontStyle: FontStyle.italic,
    //                   color: Colors.black87),
    //             ),
    //             SizedBox(
    //               width: 60,
    //             ),
    //             Icon(FontAwesome5.clock),
    //             Text(
    //               '  14:20 ',
    //               textAlign: TextAlign.left,
    //               style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.bold,
    //                   fontStyle: FontStyle.italic,
    //                   color: Colors.black87),
    //             ),
    //           ],
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         Divider(
    //           color: Colors.green,
    //           thickness: 2,
    //         ),
    //         Row(children: <Widget>[
    //           SizedBox(
    //             width: 5,
    //           ),
    //
    //           Icon(FontAwesome5.user, size: 15,),
    //           Text(
    //             ' Khách hàng',
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    //           ),
    //         ]),
    //
    //         Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
    //           child: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //
    //               children: <Widget>[
    //                 Text(
    //                   'Tên: Mai Nguyễn Nhật Đăng ',
    //                   textAlign: TextAlign.left,
    //                   style: TextStyle(
    //                       fontSize: 15,
    //                       fontWeight: FontWeight.bold,
    //                       fontStyle: FontStyle.italic,
    //                       color: Colors.black87),
    //                 ),
    //                 Text(
    //                   'Giới tính: Nam \nTuổi: 22',
    //                   textAlign: TextAlign.left,
    //                   style: TextStyle(
    //                       fontSize: 13,
    //                       fontStyle: FontStyle.italic,
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.black87),
    //                 ),
    //               ]),
    //         ),
    //         Divider(
    //           color: Colors.green,
    //           thickness: 2,
    //         ),
    //         Row(children: <Widget>[
    //           SizedBox(
    //             width: 5,
    //           ),
    //
    //           Icon(FontAwesome5Solid.notes_medical, size: 15,),
    //           Text(
    //             ' Vấn đề y tế',
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    //           ),
    //         ]),
    //         Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
    //           child: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //
    //               children: <Widget>[
    //                 RaisedButton(
    //                   color: Colors.white,
    //                   child:  Text('Hồ sơ bệnh án (nếu có)',
    //                     textAlign: TextAlign.left,
    //                     style: TextStyle(
    //                         fontSize: 15,
    //                         fontWeight: FontWeight.bold,
    //                         fontStyle: FontStyle.italic,
    //                         color: Colors.black87),),
    //
    //                   shape: new RoundedRectangleBorder(
    //                       borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: Colors.blue)),
    //                 ),
    //                 Card(
    //                     color: Colors.white70,
    //                     child: Padding(
    //                       padding: EdgeInsets.all(8.0),
    //                       child: TextField(
    //                         maxLines: 8,
    //                         decoration: InputDecoration.collapsed(
    //                             hintText: "Mô tả sơ bộ triệu chứng (nếu có)"),
    //                       ),
    //                     )
    //                 )
    //               ]),
    //         ),
    //         Divider(
    //           color: Colors.green,
    //           thickness: 2,
    //         ),
    //         SingleChildScrollView(
    //
    //           child: SizedBox(
    //             height: 200.0,
    //
    //             child: Column(
    //
    //               children: <Widget>[
    //                 RadioListTile(
    //                     value: PaySelection.momo,
    //                     title: Row(
    //                       children: <Widget>[
    //                         SizedBox(width: 150,),
    //                         Image.asset(
    //                           'assets/picture/download (1).png', width: 30,
    //                           height: 30,),
    //                         SizedBox(width: 10,),
    //                         Text('Ví Momo', style: TextStyle(
    //                             fontSize: 20,
    //                             fontWeight: FontWeight.bold
    //                         ),)
    //                       ],
    //                     ),
    //                     groupValue: _character,
    //                     activeColor: Colors.green,
    //                     onChanged: (PaySelection value) {
    //                       setState(() {
    //                         _character = value;
    //                       });
    //                     }),
    //                 RadioListTile(
    //                     value: PaySelection.viettelpay,
    //                     title: Row(
    //                       children: <Widget>[
    //                         SizedBox(width: 150,),
    //                         Image.asset(
    //                           'assets/picture/download.jpg', width: 30,
    //                           height: 30,),
    //                         SizedBox(width: 10,),
    //                         Text('Ví Viettel Pay', style: TextStyle(
    //                             fontSize: 20,
    //                             fontWeight: FontWeight.bold
    //                         ),)
    //                       ],
    //                     ),
    //                     activeColor: Colors.green,
    //                     groupValue: _character,
    //                     onChanged: (PaySelection value) {
    //                       setState(() {
    //                         _character = value;
    //                       });
    //                     }),
    //                 RadioListTile(
    //                     value: PaySelection.visa,
    //                     title: Row(
    //                       children: <Widget>[
    //                         SizedBox(width: 150,),
    //
    //                         Image.asset(
    //                           'assets/picture/536.png', width: 30, height: 30,),
    //                         SizedBox(width: 10,),
    //                         Text('Thẻ Visa', style: TextStyle(
    //                             fontSize: 20,
    //                             fontWeight: FontWeight.bold
    //                         ),)
    //                       ],
    //                     ),
    //                     groupValue: _character,
    //                     activeColor: Colors.green,
    //                     onChanged: (PaySelection value) {
    //                       setState(() {
    //                         _character = value;
    //                       });
    //                     }),
    //
    //               ],
    //             ),
    //           ),
    //         ),
    //         Divider(
    //           color: Colors.green,
    //           thickness: 2,
    //         ),
    //         SizedBox.fromSize(
    //           size: Size(56, 56), // button width and height
    //
    //           child: Material(
    //             shape: new RoundedRectangleBorder(
    //                 borderRadius: new BorderRadius.circular(30.0),side: BorderSide(color: Colors.blue)),
    //             color: Colors.white, // button color
    //             child: InkWell(
    //               borderRadius: new BorderRadius.circular(30.0),
    //               splashColor: Colors.lightGreen, // splash color
    //               onTap: () {
    //                 Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                         builder: (context) => calendarOrderScreen()));
    //               }, // button pressed
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: <Widget>[
    //                   // icon
    //                   Text(
    //                     " Tiếp tục",
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ), // text
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
