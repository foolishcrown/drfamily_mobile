import 'package:dr_family_app/screens/doctor/doctorEmergency2.dart';
import 'package:flutter/material.dart';

import 'doctorCalender.dart';
import 'doctorHome.dart';
import 'doctorNavigationDrawer.dart';
class DoctorTab2 extends StatefulWidget {
  @override
  _DoctorTab2State createState() => _DoctorTab2State();
}

class _DoctorTab2State extends State<DoctorTab2> {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      // Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      // Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      DoctorEmergency2(),
      DoctorHome(),
      DoctorCalender(),
    ];
    final _kTabs = <Tab>[
      Tab(
          icon: ImageIcon(
            AssetImage("assets/images/stethoscope.png"),
            size: 40,
          ),
          text: 'Khám ngay'),
      Tab(
          icon: ImageIcon(
            AssetImage("assets/images/diagnosis.png"),
            size: 40,
          ),
          text: 'Yêu cầu'),
      Tab(
          icon: ImageIcon(
            AssetImage("assets/images/calendar.png"),
            size: 40,
          ),
          text: 'Lịch hẹn'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        drawer: DoctorNavigationDrawer(),
        appBar: AppBar(
          title: Text('HomeMedic'),
          centerTitle: true,
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
