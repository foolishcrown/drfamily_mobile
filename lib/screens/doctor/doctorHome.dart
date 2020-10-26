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
            child: Text(
              'Yêu cầu ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: DoctorMedicalRequest(),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 500,
            child: Text(
              'Lịch hẹn ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: DoctorAppointmentSchedule(),
          ),
        ],
      ),
    );
  }
}
