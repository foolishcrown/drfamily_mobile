import 'package:flutter/material.dart';

class DoctorUpdateProfile extends StatefulWidget {
  @override
  _DoctorUpdateProfileState createState() => _DoctorUpdateProfileState();
}

class _DoctorUpdateProfileState extends State<DoctorUpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('trở về'),),
      body: Text('trang cập nhật thông tin'),
    );
  }
}
