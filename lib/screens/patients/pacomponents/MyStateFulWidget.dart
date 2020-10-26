import 'package:dr_family_app/screens/patients/pacomponents/ListDoctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/screens/patients/pacomponents/AccountMain.dart';
import 'package:dr_family_app/screens/patients/pacomponents/CalendarOrderScreen.dart';
import 'package:dr_family_app/screens/patients/pacomponents/HomeScreen.dart';

class MyStateFulWidget extends StatefulWidget {
  MyStateFulWidget({Key key}) : super(key: key);

  @override
  _MyStateFulWidgetState createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    listDoctor(),
    calendarOrderScreen(),
    MainAccountWidget()
  ];

  int returnIntPage(){

  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.lightBlueAccent,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.black87))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Trang chủ'),
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(FontAwesome5Solid.notes_medical),
                title: Text('Lịch sử khám'),
                activeIcon: Icon(FontAwesome5Solid.notes_medical)),
            // BottomNavigationBarItem(
            //     icon: Icon(FontAwesome.calendar),
            //     title: Text('Xem lịch'),
            //     activeIcon: Icon(FontAwesome.calendar)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Hồ sơ'),
                activeIcon: Icon(Icons.account_circle)),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.lightBlue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
