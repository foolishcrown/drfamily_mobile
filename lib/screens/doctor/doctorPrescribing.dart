import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:dr_family_app/screens/doctor/doctorHome.dart';
import 'package:dr_family_app/screens/doctor/mainDoctor.dart';
import 'package:flutter/material.dart';

class DoctorPrescribing extends StatefulWidget {
  @override
  _DoctorPrescribingState createState() => _DoctorPrescribingState();
}

// List<DonThuoc> listThuoc = [];
List<DonThuoc> listThuoc = new List();
// final sangVal = TextEditingController();
// final truaVal = TextEditingController();
// final chieuVal = TextEditingController();
// final tenThuoc = TextEditingController();
// final soLuong = TextEditingController();

class _DoctorPrescribingState extends State<DoctorPrescribing> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trở về'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment(0.0, 0.0),
              child: Text(
                'Đơn thuốc',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
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
                                      Icons.add_location,color: Color.fromRGBO(78, 201, 228, 1),
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
                                Text("70 kg",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Container(
              padding: EdgeInsets.all(5),
              child: TextFormField(
                // autofocus: true,
                // controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Chuẩn đoán ban đầu',
                    hintText: 'Nhập chuẩn đoán về bệnh nhân',
                    suffixIcon: Icon(Icons.assignment_sharp)),
                maxLines: 5,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Vui lòng nhập chuẩn đoán về bệnh nhân';
                  }
                  return null;
                },
              ),
            ),
            Column(
              children: [],
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Flexible(
                child: RaisedButton(
                  child: Text('Thêm thuốc'),
                  //onPressed: _showFormDonThuoc,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorMedical(),
                        ));
                  },
                ),
              ),
            ),
            Container(
              child: _showTableMedical(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Container(
                //   padding: EdgeInsets.all(5),
                //   child: FlatButton(
                //     child: Text('Gửi đơn thuốc'),
                //     textColor: Colors.black,
                //     shape: RoundedRectangleBorder(
                //         side: BorderSide(width: 1, style: BorderStyle.solid),
                //         borderRadius: BorderRadius.circular(50)),
                //     onPressed: () {
                //       // if (_formKey.currentState.validate()) {
                //       //   // do something here
                //       //   Navigator.push(
                //       //     context,
                //       //     MaterialPageRoute(
                //       //         builder: (context) => MainDoctor()),
                //       //   );
                //       // }
                //     },
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),
        child: FlatButton(
          child: Text('Kết thúc'),
          textColor: Colors.black,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
          onPressed: _xacNhan,
        ),
      ),
    );
  }

  _xacNhan() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text("Xác Nhận"),
              content: new Text(
                  "Bạn có chắc là muốn xác nhận kết thúc việc khám bệnh không!"),
              actions: <Widget>[
                Row(
                  children: [
                    FlatButton(
                      child: Text('Đồng ý'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainDoctor(),
                            ));
                      },
                    ),
                    FlatButton(
                      child: Text('Không!'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorPrescribing(),
                            ));
                      },
                    )
                  ],
                ),
              ],
            ));
  }

  Widget _showTableMedical() {
    if (listThuoc.length > 0) {
      return Scrollbar(
          controller: _scrollController,
          isAlwaysShown: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(
                      label: Text(
                    "Tên thuốc",
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    "Số lượng",
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    "Liều dùng",
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
                  )),
                  DataColumn(
                      label: Text(
                    "Xóa",
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
                  )),
                ],
                rows: listThuoc
                    .map((e) => DataRow(
                          cells: [
                            new DataCell(Container(
                              width: 150,
                              child: Text(e.tenThuoc),
                            )
                                // Text(e.tenThuoc),
                                ),
                            new DataCell(Text(e.soLuong)),
                            new DataCell(Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Sáng: '),
                                    Text(e.sang),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Trưa: '),
                                    Text(e.sang),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Chiều: '),
                                    Text(e.sang),
                                  ],
                                )
                              ],
                            )),
                            new DataCell(
                              Row(
                                children: [
                                  // IconButton(
                                  //   icon: Icon(Icons.update),
                                  //   //iconSize: 48,
                                  //   onPressed: () {
                                  //     showDialog(context: context, builder: (_) => new AlertDialog(
                                  //       title: new Text("Cập nhật"),
                                  //       content: SingleChildScrollView(
                                  //         child: Column(
                                  //           children: [
                                  //             Container(
                                  //               padding: EdgeInsets.all(3),
                                  //               child: TextFormField(
                                  //                 controller: tenThuoc,
                                  //                 decoration: InputDecoration(
                                  //                     border: OutlineInputBorder(
                                  //                       borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //                     ),
                                  //                     labelText: 'Tên thuốc',
                                  //                     hintText: 'Nhập tên thuốc',
                                  //                     suffixIcon: Icon(Icons.drive_file_rename_outline)),
                                  //               ),
                                  //             ),
                                  //             Container(
                                  //               padding: EdgeInsets.all(3),
                                  //               child: TextFormField(
                                  //                 controller: soLuong,
                                  //                 decoration: InputDecoration(
                                  //                     border: OutlineInputBorder(
                                  //                       borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //                     ),
                                  //                     labelText: 'Tổng số lượng thuốc',
                                  //                     hintText: 'Nhập số lượng',
                                  //                     suffixIcon: Icon(Icons.drive_file_rename_outline)),
                                  //                 keyboardType: TextInputType.number,
                                  //               ),
                                  //             ),
                                  //             Container(
                                  //               padding: EdgeInsets.only(left: 15),
                                  //               alignment: Alignment.topLeft,
                                  //               child: Text('Liều dùng: viên/buổi'),
                                  //             ),
                                  //             Column(
                                  //                 mainAxisAlignment: MainAxisAlignment.center,
                                  //                 children: <Widget>[
                                  //                   Text("Sáng"),
                                  //                   TextFormField(
                                  //                     controller: sangVal,
                                  //                     decoration: InputDecoration(
                                  //                         border: OutlineInputBorder(
                                  //                           borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //                         ),
                                  //                         hintText: 'viên/buổi',
                                  //                         suffixIcon: Icon(Icons.drive_file_rename_outline)),
                                  //                     keyboardType: TextInputType.number,
                                  //                   ),
                                  //                 ]),
                                  //             Column(
                                  //                 mainAxisAlignment: MainAxisAlignment.center,
                                  //                 children: <Widget>[
                                  //                   Text("Trưa"),
                                  //                   TextFormField(
                                  //                     controller: truaVal,
                                  //                     decoration: InputDecoration(
                                  //                         border: OutlineInputBorder(
                                  //                           borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //                         ),
                                  //                         hintText: 'viên/buổi',
                                  //                         suffixIcon: Icon(Icons.drive_file_rename_outline)),
                                  //                     keyboardType: TextInputType.number,
                                  //                   ),
                                  //                 ]),
                                  //             Column(
                                  //                 mainAxisAlignment: MainAxisAlignment.center,
                                  //                 children: <Widget>[
                                  //                   Text("Chiều"),
                                  //                   TextFormField(
                                  //                     controller: chieuVal,
                                  //                     decoration: InputDecoration(
                                  //                         border: OutlineInputBorder(
                                  //                           borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //                         ),
                                  //                         hintText: 'viên/buổi',
                                  //                         suffixIcon: Icon(Icons.drive_file_rename_outline)),
                                  //                     keyboardType: TextInputType.number,
                                  //                   ),
                                  //                 ]),
                                  //           ],
                                  //         ),
                                  //       ),
                                  //       actions: <Widget>[
                                  //         FlatButton(
                                  //           child: Text('Cập nhật'),
                                  //           onPressed: () {
                                  //             listThuoc.add(DonThuoc(tenThuoc.text, soLuong.text, sangVal.text,
                                  //                 truaVal.text, chieuVal.text));
                                  //             Navigator.push(
                                  //                 context,
                                  //                 MaterialPageRoute(
                                  //                   builder: (context) => DoctorPrescribing(),
                                  //                 ));
                                  //           },
                                  //         )
                                  //       ],
                                  //     ));
                                  //   }
                                  //
                                  // ),
                                  IconButton(
                                    icon: Icon(Icons.delete_rounded),
                                    //iconSize: 48,
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => new AlertDialog(
                                                title: new Text("Xác Nhận"),
                                                content: new Text(
                                                    "Bạn có chắc là muốn xóa !"),
                                                actions: <Widget>[
                                                  Row(
                                                    children: [
                                                      FlatButton(
                                                        child: Text('Đồng ý'),
                                                        onPressed: () {
                                                          listThuoc.remove(e);
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        DoctorPrescribing(),
                                                              ));
                                                        },
                                                      ),
                                                      FlatButton(
                                                        child: Text('Không!'),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ),

                            // new DataCell(Text(e.tenThuoc)),
                          ],
                        ))
                    .toList(),
              ),
            ),
          ));
    } else {
      print('khong co data');
    }
  }
}

class DoctorMedical extends StatefulWidget {
  @override
  _DoctorMedicalState createState() => _DoctorMedicalState();
}

class DonThuoc {
  var tenThuoc;
  var soLuong;
  var sang;
  var trua;
  var chieu;

  DonThuoc(this.tenThuoc, this.soLuong, this.sang, this.trua, this.chieu);
}

class _DoctorMedicalState extends State<DoctorMedical> {
  final sangVal = TextEditingController();
  final truaVal = TextEditingController();
  final chieuVal = TextEditingController();
  final tenThuoc = TextEditingController();
  final soLuong = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text("Thêm thuốc"),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              // child: TextFormField(
              //   controller: tenThuoc,
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(10)),
              //       ),
              //       labelText: 'Tên thuốc',
              //       hintText: 'Nhập tên thuốc',
              //       suffixIcon: Icon(Icons.drive_file_rename_outline)),
              // ),
              child: SimpleAutoCompleteTextField(
                controller: tenThuoc,
                suggestions: [
                  "amoxicillin",
                  "amoxicillin + clavulanic acid",
                  "ampicillin",
                  "benzathine benzylpenicillin",
                  "benzylpenicillin",
                  "cefalexin",
                  "cefazolin",
                  "cefixime",
                  "cefotaxime",
                  "ceftriaxone",
                  "phenoxymethylpenicillin",
                  "piperacillin + tazobactam",
                  "procaine benzyl penicillin",
                  "amikacin",
                  "cefalexin",
                  "azithromycin",
                  "ciprofloxacin",
                  "clarithromycin",
                ],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    labelText: 'Tên thuốc',
                    hintText: 'Nhập tên thuốc',
                    suffixIcon: Icon(Icons.drive_file_rename_outline)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(3),
              child: TextFormField(
                controller: soLuong,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Tổng số lượng thuốc',
                    hintText: 'Nhập số lượng',
                    suffixIcon: Icon(Icons.drive_file_rename_outline)),
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,
              child: Text('Liều dùng: viên/buổi'),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Sáng"),
                  TextFormField(
                    controller: sangVal,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: 'viên/buổi',
                        suffixIcon: Icon(Icons.drive_file_rename_outline)),
                    keyboardType: TextInputType.number,
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Trưa"),
                  TextFormField(
                    controller: truaVal,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: 'viên/buổi',
                        suffixIcon: Icon(Icons.drive_file_rename_outline)),
                    keyboardType: TextInputType.number,
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Chiều"),
                  TextFormField(
                    controller: chieuVal,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: 'viên/buổi',
                        suffixIcon: Icon(Icons.drive_file_rename_outline)),
                    keyboardType: TextInputType.number,
                  ),
                ]),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Thêm'),
          onPressed: () {
            listThuoc.add(DonThuoc(tenThuoc.text, soLuong.text, sangVal.text,
                truaVal.text, chieuVal.text));
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorPrescribing(),
                ));
          },
        )
      ],
    );
  }
}
