import 'package:flutter/material.dart';
class DoctorEmergency2 extends StatefulWidget {
  @override
  _DoctorEmergency2State createState() => _DoctorEmergency2State();
}

class _DoctorEmergency2State extends State<DoctorEmergency2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(height: 200,),
          Center(
            child: Text("Bạn chưa có yêu cầu khám ngay"),
          )
        ],
      )
    );
  }
}
