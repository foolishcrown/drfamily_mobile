import 'package:dr_family_app/screens/patients/pacomponents/homeMainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PatientHome extends StatefulWidget {
  @override
  _PatientHomeState createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  int _selectedIndex = 1;

  final List<Widget> _children =[
    // Day de cac trang
    homeMainPage()
  ];

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
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Colors.black87)
            )
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),

            BottomNavigationBarItem(
              icon: Icon(FontAwesome5Solid.notes_medical),
              title: Text('Result'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Account'),
                activeIcon: Icon(Icons.account_circle)
            ),
          ],
          currentIndex: _selectedIndex,

          selectedItemColor: Colors.lightBlue,

          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
