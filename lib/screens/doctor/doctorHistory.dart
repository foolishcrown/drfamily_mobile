import 'package:flutter/material.dart';

class DoctorHistory extends StatefulWidget {
  @override
  _DoctorHistoryState createState() => _DoctorHistoryState();
}

class _DoctorHistoryState extends State<DoctorHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trở về'),),
      body: Text('trang xem lich khám bệnh'),
    );
  }
}
