import 'package:badges/badges.dart';
import 'package:dr_family_app/screens/doctor/doctorCalender.dart';
import 'package:dr_family_app/screens/doctor/doctorService.dart';

import 'doctorEmergency.dart';
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
    DoctorService()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0), // here the desired height
        child: AppBar(
          title: Text('HomeMedic'),
          centerTitle: true,
          actions: [
            Container(
              padding: EdgeInsets.only(top: 7),
              child: Badge(
                badgeContent: Text('1'),
                child: SizedBox.fromSize(
                  size: Size(50, 50),
                  // button width and height
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Material(
                      color: Colors.white.withOpacity(0.001), // button color
                      child: InkWell(

                        //  splashColor: Colors.green, // splash color
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorEmergency(),
                              ));
                        },
                        // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                                color: Colors.black,
                                // colorBlendMode: BlendMode.modulate,
                                image: AssetImage(
                                    "assets/images/bell.png"),
                                height: 35.0), // icon
                            Text(
                              "Khám ngay",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ), //
                            // text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
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
            icon: new Icon(Icons.medical_services),
            title: new Text('Dịch vụ'),
          )
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
