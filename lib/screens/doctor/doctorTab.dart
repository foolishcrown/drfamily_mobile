import 'package:badges/badges.dart';
import 'package:dr_family_app/screens/doctor/doctorHome.dart';
import 'package:flutter/material.dart';

import 'doctorEmergency.dart';
import 'doctorNavigationDrawer.dart';

class DoctorTab extends StatefulWidget {
  @override
  _DoctorTabState createState() => _DoctorTabState();
}

class _DoctorTabState extends State<DoctorTab> {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      // Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      // Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      DoctorEmergency(),
      DoctorHome(),
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
            AssetImage("assets/images/calendar.png"),
            size: 40,
          ),
          text: 'Đặt hẹn'),
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

class TabsExample extends StatelessWidget {
  const TabsExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
    ];
    final _kTabs = <Tab>[
      Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
      Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
      Tab(icon: Icon(Icons.forum), text: 'Tab3'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('appbar title'),
          backgroundColor: Colors.cyan,
          // If TabController controller is not provided, then a
          // DefaultTabController ancestor must be provided instead.
          // Another way is to use a self-defined controller, c.f. "Bottom tab
          // bar" example.
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
