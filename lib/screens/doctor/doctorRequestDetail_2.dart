import 'package:dr_family_app/screens/doctor/doctorPrescribing.dart';
import 'package:url_launcher/url_launcher.dart';

import 'googleMap.dart';
import 'package:flutter/material.dart';
import 'callPhone.dart';

class DoctorRequestDetail_2 extends StatefulWidget {
  @override
  _DoctorRequestDetail_2State createState() => _DoctorRequestDetail_2State();
}

class _DoctorRequestDetail_2State extends State<DoctorRequestDetail_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin chi tiết'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 145.0,
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
                                      backgroundImage: AssetImage(
                                          'assets/images/benhnhannam.jpg'),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Trần Văn Nam',
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
                                        Icons.add_location, color: Color.fromRGBO(78, 201, 228, 1),
                                      ),
                                      Text(
                                          '13 km - 263 Khánh Hội,P5, Q4, \nTP. Hồ Chí Minh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox.fromSize(
                                        size: Size(60, 60),
                                        // button width and height
                                        child: ClipOval(
                                          child: Material(
                                            //color: Colors.orange, // button color
                                            child: InkWell(
                                              //  splashColor: Colors.green, // splash color
                                              onTap: _showHoSoBenhAn,
                                              // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Image(
                                                      image: AssetImage(
                                                          "assets/images/hosobenhan.png"),
                                                      height: 35.0, color: Color.fromRGBO(78, 201, 228, 1),), // icon
                                                  Text(
                                                    "Bệnh án",
                                                    style:
                                                        TextStyle(fontSize: 11),
                                                  ), // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox.fromSize(
                                        size: Size(60, 60),
                                        // button width and height
                                        child: ClipOval(
                                          child: Material(
                                            //color: Colors.orange, // button color
                                            child: InkWell(
                                              //  splashColor: Colors.green, // splash color
                                              onTap: _showSucKhoeTongQuat,
                                              // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Image(
                                                      image: AssetImage(
                                                          "assets/images/suckhoetongquat.png"),
                                                      height: 35.0, color: Color.fromRGBO(78, 201, 228, 1),), // icon
                                                  Text(
                                                    "Tổng quát",
                                                    style:
                                                        TextStyle(fontSize: 11),
                                                  ), // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox.fromSize(
                                        size: Size(60, 60),
                                        // button width and height
                                        child: ClipOval(
                                          child: Material(
                                            //color: Colors.orange, // button color
                                            child: InkWell(
                                              //  splashColor: Colors.green, // splash color
                                              onTap: () {
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //       builder: (context) =>
                                                //           CallPhone(),
                                                //     ));
                                                launch("tel://0963852741");
                                              }, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Image(
                                                      image: AssetImage(
                                                          "assets/images/dienthoai.png"),
                                                      height: 35.0, color: Color.fromRGBO(78, 201, 228, 1),), // icon
                                                  Text(
                                                    "Gọi",
                                                    style:
                                                        TextStyle(fontSize: 11),
                                                  ), // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
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
              SizedBox(
                height: 10,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Cân nặng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey)),
                                  Text("70 kg",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 21)),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Thời gian",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey)),
                                  Text("5:00 A.M - 20/11/2020",
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
                            padding: EdgeInsets.only(right: 260, left: 5),
                            child: Text("Triệu chứng",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey)),
                          ),
                          Row(

                            children: [

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
              // Card(
              //   child: Column(
              //     children: [
              //       SizedBox(
              //         height: 15,
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(right: 225),
              //         child: Column(
              //           children: [
              //             Container(
              //               padding: EdgeInsets.only(right: 20),
              //               child: Text("Triệu chứng",
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.w400,
              //                       color: Colors.grey)),
              //             ),
              //             Text("Bị cảm sốt",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w300, fontSize: 21)),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         height: 15,
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Container(
              //             child: Text(
              //                 "Mô tả triệu chứng hiện tại của bệnh nhân",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w400,
              //                     color: Colors.grey)),
              //             padding: EdgeInsets.only(left: 10),
              //           ),
              //           Container(
              //             padding: EdgeInsets.all(5),
              //             child: Text(
              //                 ' Ớn lạnh ho hắt hơi sổ mũi đau họng đau cơ đau đầu cảm thấy yếu hoặc '
              //                 'mệt mỏi mắt nhạy cảm với ánh sáng dạ dày khó chịu',
              //                 textAlign: TextAlign.justify,
              //                 overflow: TextOverflow.ellipsis,
              //                 maxLines: 10,
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w300, fontSize: 16)),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 70,),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: SizedBox.fromSize(
                        size: Size(90, 90), // button width and height
                        child: ClipOval(
                          child: Material(
                            // color: Colors.orange, // button color
                            child: InkWell(
                              splashColor: Colors.green, // splash color
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DoctorGoogleMap(),
                                    ));
                              }, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          "assets/images/google-maps.png"),
                                      height: 35.0), // icon
                                  Text("Chỉ đường"), // text
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: SizedBox.fromSize(
                        size: Size(90, 90), // button width and height
                        child: ClipOval(
                          child: Material(
                            // color: Colors.orange, // button color
                            child: InkWell(
                              splashColor: Colors.green, // splash color
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DoctorPrescribing(),
                                    ));
                              }, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          "assets/images/syringe.png"),
                                      height: 35.0), // icon
                                  Text("Kê đơn thuốc"), // text
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showSucKhoeTongQuat() {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Scaffold(
              body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width - 10,
              height: MediaQuery.of(context).size.height - 80,
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 53,
                  ),
                  Center(
                    child: Text(
                      "Sức khỏe tổng quát",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  DataTable(
                    columns: [
                      DataColumn(
                          label: Text(
                        "Câu hỏi",
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w900),
                      )),
                      DataColumn(
                          label: Text(
                        "Trả lời",
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w900),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(
                            Text("1. Bạn có từng phẫu thuật trước đây chưa? ")),
                        DataCell(Text("Không")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                            "2. Bạn có được chuẩn đoán mắc bệnh trước đây không? ")),
                        DataCell(Text("Không")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                            "3. Bạn có từng bị di ứng không?(Ví dụ: thuốc, côn trùng, ...)")),
                        DataCell(Text("Không")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("4. Bạn có hút thuốc không?")),
                        DataCell(Text("Có")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("5. Bạn có uống bia rượu không? ")),
                        DataCell(Text("Có")),
                      ]),
                      DataRow(cells: [
                        DataCell(
                            Text("6. Bạn có từng phẫu thuật trước đây không?")),
                        DataCell(Text("Không")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                            "7. Bạn có thường xuyên  tập thể dục không? ")),
                        DataCell(Text("Có")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("8. Bạn đang làm công việc gì?  ")),
                        DataCell(Text("Giáo viên")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                            "9. Có ai trong gia đình bạn mắc bệnh nặng không? ")),
                        DataCell(Text("Không")),
                      ]),
                    ],
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Đóng",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: const Color(0xFF1BC0C5),
                  )
                ],
              ),
            ),
          ));
        });
  }

  _showHoSoBenhAn() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text("Hồ sơ bệnh án"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Image(
                        image: AssetImage(
                            'assets/images/mau-ban-tom-tat-ho-so-benh-an.jpg')),
                    SizedBox(
                      height: 15,
                    ),
                    Image(
                        image: AssetImage(
                            'assets/images/mau-ban-tom-tat-ho-so-benh-an.jpg')),
                    SizedBox(
                      height: 15,
                    ),
                    Image(
                        image: AssetImage(
                            'assets/images/mau-ban-tom-tat-ho-so-benh-an.jpg')),
                    SizedBox(
                      height: 15,
                    ),
                    Image(
                        image: AssetImage(
                            'assets/images/mau-ban-tom-tat-ho-so-benh-an.jpg')),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('Đóng'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }
}
