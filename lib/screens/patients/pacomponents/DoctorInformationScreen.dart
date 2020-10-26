import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/screens/patients/pacomponents/UserUseServiceScreen.dart';

class doctorInform extends StatefulWidget {
  @override
  _doctorInformState createState() => _doctorInformState();
}

class _doctorInformState extends State<doctorInform> {
  bool pressAttention1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bác sĩ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1.05,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                      height: 292,
                      color: Colors.red,
                      child: Image.asset(
                        'assets/picture/background1.jpg',
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                  top: 0,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: new UserAccountsDrawerHeader(
                        // accountName: new Text("Ths.BS.CKI Nguyễn Kim Dung",style: TextStyle(fontWeight: FontWeight.bold),),
                        // accountEmail: new Text("123 Nguyễn Trãi, Tp Hồ Chí Minh",),
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage('assets/picture/doc1.png'),
                          ),
                        ),

                        // currentAccountPicture: CircleAvatar(
                        //   backgroundImage: AssetImage('assets/picture/Capture1.PNG'),
                        //
                        //
                        //     ),
                      )),
                ),
                Positioned(
                    top: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Column(
                          children: [
                            Text(
                              'Ths.BS.CKI Nguyễn Kim Dung',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo,
                                  fontSize: 20,
                                  letterSpacing: 1.0),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '  Bác sĩ Nguyễn Kim Dung với nhiều kinh nghiệm điều trị bệnh lí về Mắt. Tốt nghiệp thạc sĩ chuyên ngành Nhãn khoa'
                              ' và hiện tại đang công tác tại bệnh viện mắt TP.HCM.',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: 430,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 380,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Xếp hạng\n',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Row(

                                                  children: <Widget>[
                                                    Text('      4.8  '),
                                                    Icon(
                                                      FontAwesome.star,
                                                      color: Colors.yellow,

                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  '\nYêu thích',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                IconButton(

                                                  icon: Icon(FontAwesome.heart,),
                                                  color: pressAttention1 ? Colors.pinkAccent : Colors.grey,
                                                  onPressed: (){
                                                    setState(() => pressAttention1 = !pressAttention1);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  ' \nPhí(VND)\n',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text('450.000\n'),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width:  MediaQuery.of(context).size.width * 0.3,
                                  height: MediaQuery.of(context).size.height*0.16,
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, left: 5, bottom: 5, top: 5),
                                    child: Column(children: [
                                      Image.asset('assets/picture/Capturechuyenkhoa.jpg',
                                        width: 50,
                                        height: 50,),
                                      Divider(height: 0,),
                                      Text(
                                        'Chuyên khoa ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        ' Nhãn khoa ',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black87),
                                      ),
                                    ]),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.3,
                                  height: MediaQuery.of(context).size.height*0.16,
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, left: 5, bottom: 5, top: 5),
                                    child: Column(children: [
                                      Image.asset('assets/picture/Capturenoidaotao.jpg',
                                        width: 48,
                                        height: 50,),
                                      Divider(height: 0,),
                                      Text(
                                        'Nơi đào tạo',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Đh Y Dược TP.HCM ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black87),
                                      ),
                                    ]),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.3,
                                  height: MediaQuery.of(context).size.height*0.16,
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, left: 5, bottom: 5, top: 5),
                                    child: Column(children: [
                                      Image.asset('assets/picture/Capturebangcap.jpg',
                                        width: 50,
                                        height: 50,),
                                      Divider(height: 0,),
                                      Text(
                                        'Bằng cấp',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Thạc sĩ - bác sĩ nhãn khoa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black87),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                // Positioned(
                //   top: 540,
                //
                //   width: MediaQuery.of(context).size.width *1.2,
                //     child:
                //
                // ),

              ],
            ),
            // child: Padding(
            // padding: const EdgeInsets.fromLTRB(10, 10, 10, 0.0),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //         border: Border.all(
            //           width: 2.0,
            //         ),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0.0),
            //         child: Column(
            //           children: <Widget>[
            //             CircleAvatar(
            //               backgroundImage: AssetImage('assets/picture/Capture1.PNG'),
            //               radius: 40,
            //             ),
            //             Text(
            //               'Ths.BS.CKI Nguyễn Kim Dung',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 20,
            //                   letterSpacing: 1.0),
            //             ),
            //             Text(
            //               '(Nhãn khoa)',
            //               style: TextStyle(fontSize: 13, letterSpacing: 1.0),
            //             ),
            //             Divider(
            //               color: Colors.green,
            //               thickness: 2,
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: <Widget>[
            //                 Row(
            //                   children: <Widget>[
            //                     Expanded(
            //                       child: Column(
            //                         children: <Widget>[
            //                           Text(
            //                             'Xếp hạng\n',
            //                             style: TextStyle(fontWeight: FontWeight.bold),
            //                           ),
            //                           Row(
            //                             children: <Widget>[
            //                               Text('   4.8  '),
            //                               Icon(
            //                                 FontAwesome.star,
            //                                 color: Colors.yellow,
            //                               ),
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 70,
            //                     ),
            //                     Expanded(
            //                       child: Column(
            //                         children: <Widget>[
            //                           Text(
            //                             'Yêu thích\n',
            //                             style: TextStyle(fontWeight: FontWeight.bold),
            //                           ),
            //                           Icon(
            //                             FontAwesome.heart_o,
            //                             color: Colors.pinkAccent,
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 80,
            //                     ),
            //                     Expanded(
            //                       child: Column(
            //                         children: <Widget>[
            //                           Text(
            //                             ' Phí(VND)\n',
            //                             style: TextStyle(fontWeight: FontWeight.bold),
            //                           ),
            //                           Text('450.000\n'),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 Divider(
            //                   color: Colors.green,
            //                   thickness: 2,
            //                 ),
            //                 SizedBox(
            //                   height: 5,
            //                 ),
            //                 Text(
            //                   'Kinh nghiệm và học vấn \n',
            //                   style:
            //                       TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //                 ),
            //                 Column(children: <Widget>[
            //                   Row(
            //                     children: <Widget>[
            //                       Icon(FontAwesome.hospital_o),
            //                       Text(
            //                         '  Làm việc tại: Bệnh viện mắt TP.HCM. ',
            //                         textAlign: TextAlign.left,
            //                         style: TextStyle(
            //                             fontSize: 15,
            //                             fontWeight: FontWeight.bold,
            //                             fontStyle: FontStyle.italic,
            //                             color: Colors.black87),
            //                       ),
            //                     ],
            //                   ),
            //                   Row(
            //                     children: <Widget>[
            //                       Icon(FontAwesome5Solid.university),
            //                       Text(
            //                         '  Thạc sĩ - bác sĩ: Đại học Y Dược khoa nhãn TP.HCM. ',
            //                         textAlign: TextAlign.left,
            //                         style: TextStyle(
            //                             fontSize: 15,
            //                             fontWeight: FontWeight.bold,
            //                             fontStyle: FontStyle.italic,
            //                             color: Colors.black87),
            //                       ),
            //                     ],
            //                   ),
            //                 ]),
            //                 Divider(
            //                   color: Colors.green,
            //                   thickness: 2,
            //                 ),
            //                 SizedBox(
            //                   height: 10,
            //                 ),
            //                 Text(
            //                   'Giới thiệu \n',
            //                   style:
            //                       TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //                 ),
            //                 Text(
            //                   '  - Bác sĩ Nguyễn Kim Dung với nhiều kinh nghiệm điều trị bệnh lí về Mắt. Tốt nghiệp thạc sĩ chuyên ngành Nhãn khoa'
            //                       ' và hiện tại đang công tác tại bệnh viện mắt TP.HCM .  ',
            //                   textAlign: TextAlign.left,
            //                   style: TextStyle(
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.bold,
            //                       fontStyle: FontStyle.italic,
            //                       color: Colors.black87),
            //                 ),
            //               ],
            //             ),
            //             Divider(
            //               color: Colors.green,
            //               thickness: 2,
            //             ),
            //             Container(
            //               child: SizedBox.fromSize(
            //                 size: Size(500, 56),
            //                 child: RaisedButton.icon(
            //                     color: Colors.white,
            //                     label: Text("Đặt bác sĩ"),
            //                     icon: Icon(FontAwesome5Solid.briefcase_medical),
            //                     textColor: Colors.black,
            //                     shape: new RoundedRectangleBorder(
            //                         borderRadius: new BorderRadius.circular(13.0),
            //                         side: BorderSide(color: Colors.blue)),
            //                     onPressed: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                             builder: (context) => userUseService(),
            //                           ));
            //                     }),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            // ),
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
                  builder: (context) => userUseService(),
                ));
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(13.0),
              side: BorderSide(color: Colors.blue)),
          color: Colors.white,
          textColor: Colors.black,
          child: Text(
            'Tiếp tục',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
