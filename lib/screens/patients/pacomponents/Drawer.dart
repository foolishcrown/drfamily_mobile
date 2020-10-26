
import 'package:dr_family_app/class/Map.dart';
import 'package:dr_family_app/screens/patients/pacomponents/CalendarOrderScreen.dart';
import 'package:dr_family_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_sign_in/google_sign_in.dart';
class PatientDrawer extends StatefulWidget {
  @override
  _DoctorNavigationDrawerState createState() => _DoctorNavigationDrawerState();
}
class _DoctorNavigationDrawerState extends State<PatientDrawer> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  Future<void> signOutGoogle() async {
    await googleSignIn.signOut();
    print("User Signed Out");

  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Mai Nguyễn Nhật A"),
            accountEmail: new Text("123 Nguyễn Trãi, Tp Hồ Chí Minh"),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/picture/https___specials-images.forbesimg.com_imageserve_5dbb4182d85e3000078fddae_0x0.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/46.jpg")),
          ),
          // new ListTile(
          //     leading: Icon(Icons.notifications_active),
          //     title: new Text("Thông báo"),
          //     onTap: () {
          //       // Navigator.push(
          //       //     context,
          //       //     MaterialPageRoute(
          //       //       builder: (context) => DoctorCalender(),
          //       //     ));
          //     }),
          new ListTile(
              leading: Icon(Icons.history),
              title: new Text("Lịch sử khám bệnh "),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => DoctorHistory(),
                //     ));
              }),
          // new ListTile(
          //     leading: Icon(Icons.settings),
          //     title: new Text("Cài đặt"),
          //     onTap: () {
          //       Navigator.pop(context);
          //     }),
          // new Divider(),

          new ListTile(
              leading: Icon(FontAwesome.calendar),
              title: new Text("Lịch đặt hẹn"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => calendarOrderScreen(),
                    ));
              }),
          new ListTile(
              leading: Icon(Icons.info),
              title: new Text("Liên hệ"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoogleMapPatient(),
                    ));
              }),
          new ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Đăng xuất"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Welcome(),
                    ));
                signOutGoogle();
              }),
        ],
      ),
    );
  }
}