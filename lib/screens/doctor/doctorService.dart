import 'package:flutter/material.dart';

class DoctorService extends StatefulWidget {
  @override
  _DoctorServiceState createState() => _DoctorServiceState();
}

class _DoctorServiceState extends State<DoctorService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Dich vu bác sĩ"),
      ),
    );
  }
}
