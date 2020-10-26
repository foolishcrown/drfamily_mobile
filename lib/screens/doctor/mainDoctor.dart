import 'package:dr_family_app/screens/doctor/doctorCalender.dart';

import 'doctorNavigationDrawer.dart';
import 'package:flutter/material.dart';

import 'doctorHome.dart';
import 'doctorNotification.dart';
import 'doctorPersonal.dart';

class MainDoctor extends StatefulWidget {
  @override
  _MainDoctorState createState() => _MainDoctorState();
}

class _MainDoctorState extends State<MainDoctor> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    DoctorHome(),
    DoctorPersonal(),
    DoctorCalender()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeMedic'),
        centerTitle: true,

      ),
      drawer: DoctorNavigationDrawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Trang chủ'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle),
            title: new Text('Cá nhân'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_sharp), title: Text('Lịch làm việc'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
