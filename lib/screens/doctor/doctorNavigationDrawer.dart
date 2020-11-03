import 'package:dr_family_app/screens/doctor/doctorHistory.dart';
import 'package:dr_family_app/screens/doctor/doctorPersonal.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:badges/badges.dart';

import '../../welcome.dart';

class DoctorNavigationDrawer extends StatefulWidget {
  @override
  _DoctorNavigationDrawerState createState() => _DoctorNavigationDrawerState();
}

class _DoctorNavigationDrawerState extends State<DoctorNavigationDrawer> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> signOutGoogle() async {
    await googleSignIn.signOut();

    print("User Signed Out");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Welcome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              "Nguyễn Văn Minh",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: new Text("123 Nguyễn Trãi, Tp Hồ Chí Minh",
                style: TextStyle(color: Colors.white)),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/images/backgroundlake.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/46.jpg")),
          ),
          // new ListTile(
          //   leading: Icon(Icons.notifications_active_rounded),
          //   title: new Text("Thông báo"),
          //   onTap: _showNotification,
          // ),
          // new ListTile(
          //     leading: Icon(Icons.account_circle),
          //     title: new Text("Thông tin cá nhân "),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => DoctorPersonal(),
          //           ));
          //     }),
          new ListTile(
              leading: Icon(Icons.history),
              title: new Text("Lịch sử khám bệnh "),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorHistory(),
                    ));
              }),
          // new ListTile(
          //     leading: Icon(Icons.settings),
          //     title: new Text("Cài đặt"),
          //     onTap: () {
          //       Navigator.pop(context);
          //     }),
          // new Divider(),
          new ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Đăng xuất"),
              onTap: () {
                signOutGoogle();
              }),
        ],
      ),
    );
  }

  _showNotification() {
    showDialog(
      context: context,
      builder: (_) => Flexible(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AlertDialog(
                title: new Text("Thông báo"),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Yêu cầu khám'),
                        Badge(
                          badgeContent: Text('3'),
                          child: Icon(Icons.notification_important),
                        ),
                        SizedBox(
                          height: 15,
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Lịch hẹn khám'),
                        Badge(
                          badgeContent: Text('3'),
                          child: Icon(Icons.notification_important),
                        ),
                        SizedBox(
                          height: 15,
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Đóng!'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
