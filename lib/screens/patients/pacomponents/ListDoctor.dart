import 'package:dr_family_app/class/list_doctor2.dart';
import 'package:dr_family_app/class/list_doctor3.dart';
import 'package:dr_family_app/class/list_doctor4.dart';
import 'package:dr_family_app/screens/patients/pacomponents/AccountMain.dart';
import 'package:dr_family_app/screens/patients/pacomponents/Drawer.dart';
import 'package:dr_family_app/screens/patients/pacomponents/MyStateFulWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dr_family_app/class/Doctor.dart';
import 'package:dr_family_app/class/list_doctor_body.dart';
import 'package:geolocator/geolocator.dart';

class listDoctor extends StatefulWidget {
  @override
  _listDoctorState createState() => _listDoctorState();
}

class _listDoctorState extends State<listDoctor> {
  bool isValues = false;

  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  bool pressAttention5 = false;
  bool pressAttention6 = false;
  DoctorList callList() {

    if (  pressAttention1 == true || (pressAttention2 == false && pressAttention3 == false && pressAttention4 == false)) {
      return DoctorList();
      // DoctorList(doctors[1]),
    }
  }
  DoctorList2 callList2() {

    if (  pressAttention2 == true) {
      return DoctorList2();
      // DoctorList(doctors[1]),
    }
  }

  DoctorList3 callList3() {

    if (  pressAttention3 == true) {
      return DoctorList3();
      // DoctorList(doctors[1]),
    }
  }
  DoctorList4 callList4() {

    if (  pressAttention4 == true) {
      return DoctorList4();
      // DoctorList(doctors[1]),
    }
  }
  DoctorList2 callList5() {

    if (  pressAttention5 == true) {
      return DoctorList2();
      // DoctorList(doctors[1]),
    }
  }
  DoctorList2 callList6() {

    if (  pressAttention6 == true) {
      return DoctorList2();
      // DoctorList(doctors[1]),
    }
  }

  final Geolocator _geolocator = Geolocator();



// For storing the current position
  Position _currentPosition;
  //
  // bool isEnabled = false ;
  //
  // enableButton(){
  //
  //   setState(() {
  //     isEnabled = true;
  //   });
  // }
  //
  // disableButton(){
  //
  //   setState(() {
  //     isEnabled = false;
  //   });
  // }
  //
  // sampleFunction(){
  //   DoctorList(doctors[0]);
  //   DoctorList(doctors[1]);
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Icon(FontAwesome5Solid.clinic_medical), // icon
                  Padding(
                    padding: const EdgeInsets.only(right: 75),
                    child: Text("   Home Medic"),
                  ),

                  // IconButton(
                  //     icon: Icon(FontAwesome5Solid.user_circle), onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) =>
                  //               MainAccountWidget()));
                  // })
                  // ,
                  // text
                ],
              ),
            ),
          ),
          centerTitle: true,
        ),
        // drawer: PatientDrawer(),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height-50,
              width: MediaQuery.of(context).size.width,
              child: SafeArea(
              child: Stack(children: [
            Positioned(
                child: Column(children: [
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 10, left: 10),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         FlatButton(
              //             onPressed: () {}, child: Text('Theo chuyên khoa')),
              //         FlatButton(
              //             onPressed: () {}, child: Text('Theo đánh giá')),
              //       ],
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Text(
                  'Vị trí hiện tại',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.location_on),
                    Text('DK, BÌNH TÂN',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    // IconButton(
                    //     icon: Icon(Icons.arrow_drop_down), onPressed: () {})
                  ],
                ),
              ),
            ])),
            Positioned(
                top: 60,
                height: MediaQuery.of(context).size.height*1.2,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  widthFactor: MediaQuery.of(context).size.width*1.2,
                  child: Container(

                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 20.0),

                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 220),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                         //Day se la khuc hieu chinh su thay doi
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03,),
                              child: Padding(

                                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01 ),
                                child: Column(

                                  children: [
                                    Row(

                                      children: [
                                        FlatButton(

                                          onPressed: () => {
                                            setState(() => pressAttention1 = !pressAttention1),
                                            setState(() => pressAttention3 = false),
                                            setState(() => pressAttention4 = false),
                                            setState(() => pressAttention2 = false),
                                            setState(() => pressAttention5 = false),
                                            setState(() => pressAttention6 = false),
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.2,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: pressAttention1
                                                  ? Colors.cyan
                                                  : Colors.white,

                                              border: Border.all(

                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 15),
                                              child: Column(
                                                children: [
                                                  Image.asset('assets/picture/stethoscope-icon-2316460__340.png',width: 45,height: 45,),
                                                  Divider(height: 1,),
                                                  Text(
                                                    'Tất cả',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlatButton(

                                          onPressed: () => {
                                            setState(() => pressAttention2 = !pressAttention2),
                                            setState(() => pressAttention3 = false),
                                            setState(() => pressAttention4 = false),
                                            setState(() => pressAttention1 = false),
                                            setState(() => pressAttention5 = false),
                                            setState(() => pressAttention6 = false),
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.22,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: pressAttention2
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 15),
                                              child: Column(

                                                children: [
                                                  Image.asset('assets/picture/heart-icon.png',width: 45,height: 45,),
                                                  Divider(height: 1,),
                                                  Text(
                                                    'Tim mạch',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () => {
                                            setState(() => pressAttention3 = !pressAttention3),
                                            setState(() => pressAttention2 = false),
                                            setState(() => pressAttention4 = false),
                                            setState(() => pressAttention1 = false),
                                            setState(() => pressAttention5 = false),
                                            setState(() => pressAttention6 = false),
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.2,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: pressAttention3
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top: 15),
                                              child: Column(

                                                children: [
                                                  Image.asset('assets/picture/Eye.png',width: 45,height: 45,),
                                                  Divider(height: 1,),
                                                  Text(
                                                    'Nhãn khoa',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      children: [
                                        FlatButton(
                                          onPressed: () => {
                                            setState(() => pressAttention4 = !pressAttention4),
                                            setState(() => pressAttention2 = false),
                                            setState(() => pressAttention3 = false),
                                            setState(() => pressAttention1 = false),
                                            setState(() => pressAttention5 = false),
                                            setState(() => pressAttention6 = false),
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.2,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: pressAttention4
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 15),
                                              child: Column(

                                                children: [
                                                  Image.asset('assets/picture/icon-xuong-khop.png',width: 45,height: 45,),
                                                  Divider(height: 1,),
                                                  Text(
                                                    'Xương khớp',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () => {
                                            setState(() => pressAttention5 = !pressAttention5),
                                            setState(() => pressAttention2 = false),
                                            setState(() => pressAttention3 = false),
                                            setState(() => pressAttention1 = false),
                                            setState(() => pressAttention4 = false),
                                            setState(() => pressAttention6 = false),
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.22,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: pressAttention5
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 15),
                                              child: Column(

                                                children: [
                                                  Image.asset('assets/picture/taimuihong2.png',width: 45,height: 45,),
                                                  Divider(height: 1,),
                                                  Text(
                                                    'Tai mũi họng',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () => {
                                            setState(() => pressAttention6 = !pressAttention6),
                                            setState(() => pressAttention2 = false),
                                            setState(() => pressAttention3 = false),
                                            setState(() => pressAttention1 = false),
                                            setState(() => pressAttention4 = false),
                                            setState(() => pressAttention5 = false),
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.2,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: pressAttention6
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 15),
                                              child: Column(

                                                children: [
                                                  Image.asset('assets/picture/khoanhi.png',width: 45,height: 45,),
                                                  Divider(height: 1,),
                                                  Text(
                                                    'Nhi khoa',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            // Container(
                            //   width: 400.0,
                            //   color: Colors.blue,
                            // ),
                            // Container(
                            //   width: 400.0,
                            //   color: Colors.green,
                            // ),
                            // Container(
                            //   width: 400.0,
                            //   color: Colors.yellow,
                            // ),
                            // Container(
                            //   width: 412.0,
                            //   color: Colors.orange,
                            // ),

                            Container(
                              margin: const EdgeInsets.symmetric(horizontal:4, vertical: 5),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 20),
                                        child: Text(
                                          'DANH SÁCH BÁC SĨ',
                                          style: TextStyle(color: Colors.black38),
                                        ),
                                      )),
                                  // DoctorList(),
                                  Container(

                                    child: callList(),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: callList2(),
                                  ),
                                  Container(
                                    child: callList3(),
                                  ),
                                  Container(
                                    child: callList4(),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),

            // Positioned(
            //
            //     top: 230,
            //     right: 5,
            //     width: MediaQuery.of(context).size.width,
            //     child: Text('asd'))
              ])),
            ),
          ),
        )
        //
        );
  }
}
//       Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(FontAwesome.user_md), // icon
//             Text(" Danh sách bác sĩ"), // text
//           ],
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         // height: 200.0,
//         // child: Wrap(
//         //   direction: Axis.vertical,
//         //   children:<Widget> [
//         //
//         //     // DoctorList(doctors[0]),
//         //     // DoctorList(doctors[1]),
//         //   ],
//         // ),
//       ),
//
//       );
//
//   }
// }

// body:  SingleChildScrollView(
//
//     child: Card(
//       margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//       child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   // FlatButton(
//                   //   color: Colors.green,
//                   //   child: DropdownButton<String>(
//                   //     value: dropdownValue,
//                   //     dropdownColor: Colors.white70,
//                   //     icon: Icon(
//                   //       Icons.arrow_downward,
//                   //       color: Colors.black,
//                   //     ),
//                   //     iconSize: 24,
//                   //     elevation: 16,
//                   //     style: TextStyle(
//                   //         color: Colors.black,
//                   //         fontSize: 14,
//                   //         fontWeight: FontWeight.bold),
//                   //     focusColor: Colors.white70,
//                   //     onChanged: (String newValue) {
//                   //       setState(() {
//                   //         dropdownValue = newValue;
//                   //       });
//                   //     },
//                   //     items: <String>[
//                   //       'Chuyên khoa',
//                   //       'Khoa nhi',
//                   //       'Khoa tai-mũi-họng',
//                   //       'Khoa xương khớp'
//                   //     ].map<DropdownMenuItem<String>>((String value) {
//                   //       return DropdownMenuItem<String>(
//                   //         value: value,
//                   //         child: Text(value),
//                   //       );
//                   //     }).toList(),
//                   //   ),
//                   // ),
//                   // SizedBox(
//                   //   width: 10,
//                   // ),
//                   // FlatButton(
//                   //   color: Colors.green,
//                   //   child: DropdownButton<String>(
//                   //     value: dropdownValue2,
//                   //     dropdownColor: Colors.white70,
//                   //     icon: Icon(
//                   //       Icons.arrow_downward,
//                   //       color: Colors.black,
//                   //     ),
//                   //     iconSize: 24,
//                   //     elevation: 16,
//                   //     style: TextStyle(
//                   //         color: Colors.black,
//                   //         fontSize: 14,
//                   //         fontWeight: FontWeight.bold),
//                   //     onChanged: (String newValue) {
//                   //       setState(() {
//                   //         dropdownValue2 = newValue;
//                   //       });
//                   //     },
//                   //     items: <String>[
//                   //       'Giá thành',
//                   //       '500.000đ - 400.000đ',
//                   //       '400.000đ - 300.000đ',
//                   //       '250.000đ - 150.000đ'
//                   //     ].map<DropdownMenuItem<String>>((String value) {
//                   //       return DropdownMenuItem<String>(
//                   //         value: value,
//                   //         child: Text(value),
//                   //       );
//                   //     }).toList(),
//                   //   ),
//                   //
//                   // ),
//                   // Expanded(
//                   //   child: SizedBox.fromSize(
//                   //     size: Size(190, 40),
//                   //     child: RaisedButton.icon(
//                   //         color: Colors.greenAccent,
//                   //         label: Text("Khám ngay"),
//                   //         icon: Icon(FontAwesome.user_md),
//                   //         textColor: Colors.black,
//                   //         shape: new RoundedRectangleBorder(
//                   //             borderRadius: new BorderRadius.circular(30.0),
//                   //             side: BorderSide(color: Colors.blue)),
//                   //         onPressed: () {}),
//                   //   ),
//                   // ),
//
//                   SizedBox(
//                     width: 10,
//                   ),
//                   // Expanded(
//                   //   child: SizedBox.fromSize(
//                   //     size: Size(190, 40),
//                   //     child: RaisedButton.icon(
//                   //         color: Colors.greenAccent,
//                   //         label: Text("Đặt lịch hẹn bác sĩ"),
//                   //         icon: Icon(FontAwesome.calendar),
//                   //         textColor: Colors.black,
//                   //         shape: new RoundedRectangleBorder(
//                   //             borderRadius: new BorderRadius.circular(30.0),
//                   //             side: BorderSide(color: Colors.blue)),
//                   //         onPressed: () {}),
//                   //   ),
//                   // ),
//
//                   // text
//                 ],
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Column(
//                 // Day se la noi lay du lieu tu phia list quotes
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 // children: doctors
//                 //     .map((doctor) => DoctorList(doctor: doctor))
//                 //     .toList(),
//                 children: <Widget>[
//                   // FlatButton(
//                   //   color: Colors.white70,
//                   //   shape: new RoundedRectangleBorder(
//                   //       borderRadius: new BorderRadius.circular(30.0),
//                   //       side: BorderSide(color: Colors.blue)),
//                   //   child: DropdownButton<String>(
//                   //     value: dropdownValue3,
//                   //     dropdownColor: Colors.white70,
//                   //     icon: Icon(
//                   //       Icons.arrow_downward,
//                   //       color: Colors.black,
//                   //     ),
//                   //     iconSize: 24,
//                   //     elevation: 16,
//                   //     style: TextStyle(
//                   //         color: Colors.black,
//                   //         fontSize: 14,
//                   //         fontWeight: FontWeight.bold),
//                   //     onChanged: (String newValue) {
//                   //       setState(() {
//                   //         dropdownValue3 = newValue;
//                   //         enableButton();
//                   //       });
//                   //     },
//                   //
//                   //     items: <String>[
//                   //       'Vấn đề bạn đang gặp phải',
//                   //       'Vấn đề ho sốt cảm',
//                   //       'Vấn đề xương khớp',
//                   //       'Vấn đề về răng miệng'
//                   //     ].map<DropdownMenuItem<String>>((String value) {
//                   //       return DropdownMenuItem<String>(
//                   //         value: value,
//                   //         child: Text(value),
//                   //       );
//                   //     }).toList(),
//                   //   ),
//                   //   onPressed: (){
//                   //     enableButton();
//                   //   },
//                   // ),
//                   // DoctorList(doctors[0]),
//                   // DoctorList(doctors[1]),
//
//                 ],
//               ),
//             ],
//           )),
//     ),
//   ),
