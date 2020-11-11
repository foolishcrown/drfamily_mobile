import 'package:dr_family_app/screens/doctor/doctorTab.dart';
import 'package:dr_family_app/screens/doctor/doctorTab2.dart';
import 'package:dr_family_app/screens/doctor/googleMapEmergency.dart';
import 'package:dr_family_app/screens/doctor/videoApp.dart';
import 'package:flutter/material.dart';

import 'mainDoctor.dart';

class DoctorEmergency extends StatefulWidget {
  @override
  _DoctorEmergencyState createState() => _DoctorEmergencyState();
}

class _DoctorEmergencyState extends State<DoctorEmergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 120.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: CircleAvatar(
                                radius: 50,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/images/anhnam.jpg'),
                                ),
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Nguyễn Phạm Lê Nam',
                                  style: (TextStyle(fontSize: 20)),
                                ),
                                padding: EdgeInsets.only(left: 10),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_location,
                                    color: Color.fromRGBO(78, 201, 228, 1),
                                  ),
                                  Text(
                                      '13 km - 263 Khánh Hội,P5, Q4, \nTP. Hồ Chí Minh',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Giới tính",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                              Text("Nam",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 21)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cân nặng",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                              Text("65 kg",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 21)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Chiều cao",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                              Text("175 cm",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 21)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ngày sinh",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                              Text("01/01/1985",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 21)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tuổi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                              Text("40                        ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 21)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Điện thoại",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                              Text("0963852741",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 21)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  //padding: EdgeInsets.only(right: 245),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 260),
                        child: Text("Triệu chứng",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Card(
                            child: Text("Bị cảm sốt",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 21)),
                          ),
                          Card(
                            child: Text("Nhứt đầu",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 21)),
                          ),
                          Card(
                            child: Text("Đau họng",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 21)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Mô tả triệu chứng hiện tại của bệnh nhân",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.grey)),
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                          ' Ớn lạnh ho hắt hơi sổ mũi đau họng đau cơ đau đầu cảm thấy yếu hoặc '
                          'mệt mỏi mắt nhạy cảm với ánh sáng dạ dày khó chịu',
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 21)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 3,
              ),
              Card(
                child: Column(
                  children: [
                    Text("Video của bệnh nhân",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                    Container(height: 270, child: VideoDemo()),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(5),
                child: FlatButton(
                  color: Colors.lightGreenAccent,
                  child: Text(
                    'Chấp nhận',
                    style: TextStyle(fontSize: 20),
                  ),
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: _xacNhan,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: FlatButton(
                    color: Colors.redAccent,
                    child: Text(
                      'Từ chối',
                      style: TextStyle(fontSize: 20),
                    ),
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: _tuChoi),
              ),
            ],
          ),
        ],
      )),
    );
  }

  _xacNhan() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text("Xác Nhận"),
              content: new Text("Bạn có chắc là muốn xác nhận không!"),
              actions: <Widget>[
                Row(
                  children: [
                    FlatButton(
                      child: Text('Đồng ý'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorGoogleMapEmergency(),
                            ));
                      },
                    ),
                    FlatButton(
                      child: Text('Không!'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              ],
            ));
  }

  _tuChoi() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text("Từ chối"),
              content: new Text("Bạn có chắc là muốn từ chối không!"),
              actions: <Widget>[
                Row(
                  children: [
                    FlatButton(
                      child: Text('Đồng ý'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorTab2(),
                            ));
                      },
                    ),
                    FlatButton(
                      child: Text('Không!'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              ],
            ));
  }
}
