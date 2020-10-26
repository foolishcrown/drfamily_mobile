import 'package:dr_family_app/screens/doctor/doctorUpdateProfile.dart';
import 'package:flutter/material.dart';

class DoctorPersonal extends StatefulWidget {
  @override
  _DoctorPersonalState createState() => _DoctorPersonalState();
}

class _DoctorPersonalState extends State<DoctorPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: new Text("Nguyễn Văn Minh", style: TextStyle(color: Colors.white),),
            accountEmail: new Text("123 Nguyễn Trãi, Tp Hồ Chí Minh", style: TextStyle(color: Colors.white)),
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
          Container(
            child: Text(
              "Họ và tên: ",
              textAlign: TextAlign.left,
              style:
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Text(
              "Giới tính: ",
              textAlign: TextAlign.left,
              style:
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
            padding: EdgeInsets.all(5),
          ),

          Container(
            child: Text(
              "Ngày sinh: ",
              textAlign: TextAlign.left,
              style:
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Text(
              "Số điện thoại : ",
              textAlign: TextAlign.left,
              style:
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Text(
              "Địa chỉ : ",
              textAlign: TextAlign.left,
              style:
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
            ),
            padding: EdgeInsets.all(5),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: FlatButton(
              child: Text('Cập nhật thông tin'),
              textColor: Colors.black,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorUpdateProfile(),));
              },
            ),
          ),
        ],
      ),
    );
  }
}
