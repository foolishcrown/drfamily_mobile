import 'package:flutter/cupertino.dart';

import 'doctorAppointmentSchedule.dart';
import 'doctorMedicalRequest.dart';
import 'package:flutter/material.dart';

class DoctorHome extends StatefulWidget {
  @override
  _DoctorHomeState createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 25),
            width: 500,
            child: Row(
              children: [
                Text(
                  'Yêu cầu ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 180,),
                Text(
                  'Tiếp theo ',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  size: 15,
                  color: Colors.red,
                ),
              ],
            )
          ),
          Expanded(
            child: DoctorMedicalRequest(),
          ),
          Container(
              padding: EdgeInsets.only(left: 10, top: 25),
              width: 500,
              child: Row(
                children: [
                  Text(
                    'Lịch hẹn ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 170,),
                  Text(
                    'Tiếp theo ',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    size: 15,
                    color: Colors.red,
                  ),
                ],
              )
          ),
          Expanded(
            child: DoctorAppointmentSchedule(),
          ),
        ],
      ),
    );
  }
}
