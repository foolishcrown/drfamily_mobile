import 'package:flutter/material.dart';

class DoctorNotification extends StatefulWidget {
  @override
  _DoctorNotificationState createState() => _DoctorNotificationState();
}

class _DoctorNotificationState extends State<DoctorNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Text('thông báo về yêu cầu khám bệnh'),
          Text('thông báo về lịch khám sắp tới'),

        ],
      ),
    );
  }
}
