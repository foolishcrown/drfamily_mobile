import 'package:flutter/material.dart';

class DoctorMessenger extends StatefulWidget {
  @override
  _DoctorMessengerState createState() => _DoctorMessengerState();
}

class _DoctorMessengerState extends State<DoctorMessenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trở về'),
      ),
      body: Text('trang nhắn tin với bện nhân'),
    );
  }
}
