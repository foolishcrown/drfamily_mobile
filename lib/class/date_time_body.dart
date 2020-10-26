

import 'package:dr_family_app/class/DateCalendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/class/Temp.dart';
import 'package:dr_family_app/screens/patients/pacomponents/PayCheckScreen.dart';

class date_time_body extends StatefulWidget {
  @override
  _date_time_bodyState createState() => _date_time_bodyState();
}

class _date_time_bodyState extends State<date_time_body> {
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  bool pressAttention5 = false;
  bool pressAttention6 = false;
  bool pressAttention7 = false;
  bool pressAttention8 = false;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 1000.0,
        width: 500.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 5),
                Icon(FontAwesome.calendar), // icon
                Text(
                  " Chọn ngày ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ), // text
              ],
            ),
            Appointment(),
            // SizedBox(height: 10,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: <Widget>[
            //     SizedBox(width: 5),
            //     Icon(FontAwesome.clock_o), // icon
            //     Text(
            //       " Chọn thời gian ",
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black,
            //         fontSize: 20,
            //       ),
            //     ), // text
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //
            //         SizedBox(width: 15,),
            //         RaisedButton(
            //           child: new Text('14:00'),
            //           textColor: Colors.black,
            //           shape: new RoundedRectangleBorder(
            //               borderRadius: new BorderRadius.circular(30.0),
            //               side: BorderSide(color: Colors.black12)
            //           ),
            //
            //           color: pressAttention1 ? Colors.lightBlue : Colors.white30,
            //
            //           onPressed: () =>
            //           {
            //             setState(() => pressAttention1 =!pressAttention1),
            //             setState(() => pressAttention2 = false),
            //             setState(() => pressAttention3 = false),
            //             setState(() => pressAttention4 = false),
            //             setState(() => pressAttention5 = false),
            //             setState(() => pressAttention6 = false),
            //             setState(() => pressAttention7 = false),
            //             setState(() => pressAttention8 = false),
            //           },
            //
            //
            //         ),
            //         SizedBox(width: 10,),
            //         RaisedButton(
            //           child: new Text('14:20'),
            //           textColor: Colors.black,
            //           shape: new RoundedRectangleBorder(
            //               borderRadius: new BorderRadius.circular(30.0),
            //               side: BorderSide(color: Colors.black12)
            //           ),
            //           color: pressAttention2 ? Colors.lightBlue : Colors.white30,
            //           onPressed: () =>
            //           {
            //             setState(() => pressAttention2 = !pressAttention2),
            //             setState(() => pressAttention1 = false),
            //             setState(() => pressAttention3 = false),
            //             setState(() => pressAttention4 = false),
            //             setState(() => pressAttention5 = false),
            //             setState(() => pressAttention6 = false),
            //             setState(() => pressAttention7 = false),
            //             setState(() => pressAttention8 = false),
            //           }
            //         ),
            //         SizedBox(width: 10,),
            //         RaisedButton(
            //           child: new Text('14:40'),
            //           textColor: Colors.black,
            //           shape: new RoundedRectangleBorder(
            //               borderRadius: new BorderRadius.circular(30.0),
            //               side: BorderSide(color: Colors.black12)
            //           ),
            //           color: pressAttention3 ? Colors.lightBlue : Colors.white30,
            //           onPressed: () =>
            //           {
            //
            //             setState(() => pressAttention3 = !pressAttention3),
            //             setState(() => pressAttention1 = false),
            //             setState(() => pressAttention2 = false),
            //             setState(() => pressAttention4 = false),
            //             setState(() => pressAttention5 = false),
            //             setState(() => pressAttention6 = false),
            //             setState(() => pressAttention7 = false),
            //             setState(() => pressAttention8 = false),
            //           }
            //         ),
            //          SizedBox(width: 10,),
            //         RaisedButton(
            //           child: new Text('15:00'),
            //           textColor: Colors.black,
            //           shape: new RoundedRectangleBorder(
            //               borderRadius: new BorderRadius.circular(30.0),
            //               side: BorderSide(color: Colors.black12)
            //           ),
            //           color: pressAttention4 ? Colors.lightBlue : Colors.white30,
            //           onPressed: () =>
            //           {
            //             setState(() => pressAttention4 = !pressAttention4),
            //             setState(() => pressAttention1 = false),
            //             setState(() => pressAttention3 = false),
            //             setState(() => pressAttention2 = false),
            //             setState(() => pressAttention5 = false),
            //             setState(() => pressAttention6 = false),
            //             setState(() => pressAttention7 = false),
            //             setState(() => pressAttention8 = false),
            //           }
            //         ),
            //
            //
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //
            //     SizedBox(width: 15,),
            //     RaisedButton(
            //       child: new Text('14:10'),
            //       textColor: Colors.black,
            //       shape: new RoundedRectangleBorder(
            //           borderRadius: new BorderRadius.circular(30.0),
            //           side: BorderSide(color: Colors.black12)
            //       ),
            //       color: pressAttention5 ? Colors.lightBlue : Colors.white30,
            //       onPressed: () =>{
            //           setState(() => pressAttention5 =!pressAttention5),
            //         setState(() => pressAttention1 = false),
            //         setState(() => pressAttention3 = false),
            //         setState(() => pressAttention4 = false),
            //         setState(() => pressAttention2 = false),
            //         setState(() => pressAttention6 = false),
            //         setState(() => pressAttention7 = false),
            //         setState(() => pressAttention8 = false),
            //       }
            //     ),
            //     SizedBox(width: 10,),
            //     RaisedButton(
            //       child: new Text('14:30'),
            //       textColor: Colors.black,
            //       shape: new RoundedRectangleBorder(
            //           borderRadius: new BorderRadius.circular(30.0),
            //           side: BorderSide(color: Colors.black12)
            //       ),
            //       color: pressAttention6 ? Colors.lightBlue : Colors.white30,
            //       onPressed: () =>
            //       {
            //         setState(() => pressAttention6 = !pressAttention6),
            //         setState(() => pressAttention1 = false),
            //         setState(() => pressAttention3 = false),
            //         setState(() => pressAttention4 = false),
            //         setState(() => pressAttention5 = false),
            //         setState(() => pressAttention2 = false),
            //         setState(() => pressAttention7 = false),
            //         setState(() => pressAttention8 = false),
            //
            //       }
            //     ),
            //     SizedBox(width: 10,),
            //     RaisedButton(
            //       child: new Text('14:50'),
            //       textColor: Colors.black,
            //       shape: new RoundedRectangleBorder(
            //           borderRadius: new BorderRadius.circular(30.0),
            //           side: BorderSide(color: Colors.black12)
            //       ),
            //       color: pressAttention7 ? Colors.lightBlue : Colors.white30,
            //       onPressed: () =>
            //       {
            //         setState(() => pressAttention7 = !pressAttention7),
            //         setState(() => pressAttention1 = false),
            //         setState(() => pressAttention3 = false),
            //         setState(() => pressAttention4 = false),
            //         setState(() => pressAttention5 = false),
            //         setState(() => pressAttention6 = false),
            //         setState(() => pressAttention2 = false),
            //         setState(() => pressAttention8 = false),
            //       }
            //     ),
            //     SizedBox(width: 10,),
            //     RaisedButton(
            //       child: new Text('15:20'),
            //       textColor: Colors.black,
            //       shape: new RoundedRectangleBorder(
            //           borderRadius: new BorderRadius.circular(30.0),
            //           side: BorderSide(color: Colors.black12)
            //       ),
            //       color: pressAttention8 ? Colors.lightBlue : Colors.white30,
            //       onPressed: () =>
            //       {
            //         setState(() => pressAttention8 = !pressAttention8),
            //         setState(() => pressAttention1 = false),
            //         setState(() => pressAttention3 = false),
            //         setState(() => pressAttention4 = false),
            //         setState(() => pressAttention5 = false),
            //         setState(() => pressAttention6 = false),
            //         setState(() => pressAttention7 = false),
            //         setState(() => pressAttention2 = false),
            //       }
            //
            //
            //     ),
            //
            //
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // SizedBox.fromSize(
            //   size: Size(56, 56), // button width and height
            //
            //   child: Material(
            //     shape: new RoundedRectangleBorder(
            //         borderRadius: new BorderRadius.circular(30.0), side: BorderSide(color: Colors.blue)),
            //     color: Colors.white, // button color
            //     child: InkWell(
            //       borderRadius: new BorderRadius.circular(30.0),
            //       splashColor: Colors.lightGreen, // splash color
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => payCheckScreen()));
            //       }, // button pressed
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: <Widget>[
            //           // icon
            //           Text(
            //             " Tiếp tục",
            //             style: TextStyle(
            //
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 20,
            //
            //             ),
            //           ), // text
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
