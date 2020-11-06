import 'package:dr_family_app/screens/doctor/doctorTab.dart';
import 'package:dr_family_app/screens/doctor/doctorUpdateProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorPersonal extends StatefulWidget {
  @override
  _DoctorPersonalState createState() => _DoctorPersonalState();
}

class _DoctorPersonalState extends State<DoctorPersonal> {
  // code thua
  var dienThoaiUpdate = TextEditingController();
  String _valueTien;
  Widget _buildDienThoai() {
    print("so dien thoai : ${dienThoaiUpdate.text}");
    if (dienThoaiUpdate.text != null) {
      print("in 1 ");
      return Text("0963852456",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15));
    } else {
      print("in 2 ${dienThoaiUpdate.text}");
      return Text(dienThoaiUpdate.text,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15));
    }
  }
  // het code thua
  // het code thua

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trở về"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/46.jpg"),
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Thông tin cá nhân",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.account_circle,
                          color: Color.fromRGBO(78, 201, 228, 1),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text("Nguyễn Văn Minh",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.wc,
                          color: Color.fromRGBO(78, 201, 228, 1),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text("Nam",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.date_range,
                          color: Color.fromRGBO(78, 201, 228, 1),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text("01/01/1975",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.phone,
                          color: Color.fromRGBO(78, 201, 228, 1),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          child: _buildDienThoai(),
                        ),
                        SizedBox(
                          width: 165,
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                            title: new Text("Cập nhật"),
                                            content: TextFormField(
                                              controller: dienThoaiUpdate,
                                              keyboardType: TextInputType.phone,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  labelText: 'Điện thoại',
                                                  hintText:
                                                      'Nhập số điện thoại',
                                              ),
                                            ),
                                            actions: <Widget>[
                                              Row(
                                                children: [
                                                  FlatButton(
                                                    child: Text('Cập nhật'),
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                DoctorPersonal(),
                                                          ));
                                                    },
                                                  ),
                                                  FlatButton(
                                                    child: Text('Không!'),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  )
                                                ],
                                              ),
                                            ],
                                          ));
                                },
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.add_location_rounded,
                          color: Color.fromRGBO(78, 201, 228, 1),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 240,
                          child: Text(
                            "215B37 Nguyễn Văn Hưởng, P, Quận 2, Thành phố Hồ Chí Minh",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                        title: new Text("Cập nhật"),
                                        content: TextFormField(
                                          controller: dienThoaiUpdate,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(
                                                        10)),
                                              ),
                                              labelText: 'Địa chỉ',
                                              hintText:
                                              'Nhập địa chỉ',
                                              ),
                                        ),
                                        actions: <Widget>[
                                          Row(
                                            children: [
                                              FlatButton(
                                                child: Text('Cập nhật'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            DoctorPersonal(),
                                                      ));
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('Không!'),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop();
                                                },
                                              )
                                            ],
                                          ),
                                        ],
                                      ));
                                },
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Thông tin nghề ngiệp",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/doctor.png"),
                          color: Color.fromRGBO(78, 201, 228, 1),
                          size: 27,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 240,
                          child: Text(
                            "Bệnh viện quân y 175",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                        title: new Text("Cập nhật"),
                                        content: TextFormField(
                                         // controller: dienThoaiUpdate,

                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      10)),
                                            ),
                                            labelText: 'Nơi công tác',
                                            hintText:
                                            'Nhập nơi công tác',
                                          ),
                                        ),
                                        actions: <Widget>[
                                          Row(
                                            children: [
                                              FlatButton(
                                                child: Text('Cập nhật'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            DoctorPersonal(),
                                                      ));
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('Không!'),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop();
                                                },
                                              )
                                            ],
                                          ),
                                        ],
                                      ));
                                },
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/doctor.png"),
                          color: Color.fromRGBO(78, 201, 228, 1),
                          size: 27,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 240,
                          child: Text(
                            "Khoa nhi, Khoa nội, Khoa ngoại, Tai - Mũi - Họng",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                        title: new Text("Cập nhật"),
                                        content: TextFormField(
                                         // controller: dienThoaiUpdate,

                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      10)),
                                            ),

                                            labelText: 'Khoa',
                                            hintText:
                                            'Nhập khoa',
                                          ),
                                          maxLines: 4,
                                        ),
                                        actions: <Widget>[
                                          Row(
                                            children: [
                                              FlatButton(
                                                child: Text('Cập nhật'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            DoctorPersonal(),
                                                      ));
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('Không!'),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop();
                                                },
                                              )
                                            ],
                                          ),
                                        ],
                                      ));
                                },
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/doctor.png"),
                          color: Color.fromRGBO(78, 201, 228, 1),
                          size: 27,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 240,
                          child: Text(
                            "15 năm kinh nghiệm",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                        title: new Text("Cập nhật"),
                                        content: TextFormField(
                                          //controller: dienThoaiUpdate,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      10)),
                                            ),
                                            labelText: 'Năm kinh nghiệm',
                                            hintText:
                                            'Nhập năm kinh nghiệm',
                                          ),
                                        ),
                                        actions: <Widget>[
                                          Row(
                                            children: [
                                              FlatButton(
                                                child: Text('Cập nhật'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            DoctorPersonal(),
                                                      ));
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('Không!'),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop();
                                                },
                                              )
                                            ],
                                          ),
                                        ],
                                      ));
                                },
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/doctor.png"),
                          color: Color.fromRGBO(78, 201, 228, 1),
                          size: 27,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 240,
                          child: Text(
                            "Bác sĩ chuyên khoa 1",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {showDialog(
                                    context: context,
                                    builder: (_) => new AlertDialog(
                                      title: new Text("Cập nhật"),
                                      content: TextFormField(
                                        //controller: dienThoaiUpdate,

                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(
                                                    10)),
                                          ),
                                          labelText: 'Chuyên khoa',
                                          hintText:
                                          'Nhập chuyên khoa',
                                        ),
                                      ),
                                      actions: <Widget>[
                                        Row(
                                          children: [
                                            FlatButton(
                                              child: Text('Cập nhật'),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DoctorPersonal(),
                                                    ));
                                              },
                                            ),
                                            FlatButton(
                                              child: Text('Không!'),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop();
                                              },
                                            )
                                          ],
                                        ),
                                      ],
                                    ));},
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/clipboard.png"),
                          color: Color.fromRGBO(78, 201, 228, 1),
                          size: 27,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 240,
                          child: Text(
                            "Đau khớp, đau xương, đau cơ,...",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                        title: new Text("Cập nhật"),
                                        content: TextFormField(
                                          //controller: dienThoaiUpdate,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      10)),
                                            ),
                                            labelText: 'Các bệnh điều trị',
                                            hintText:
                                            'Nhập các bệnh điều trị',
                                          ),
                                          maxLines: 5,
                                        ),
                                        actions: <Widget>[
                                          Row(
                                            children: [
                                              FlatButton(
                                                child: Text('Cập nhật'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            DoctorPersonal(),
                                                      ));
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('Không!'),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop();
                                                },
                                              )
                                            ],
                                          ),
                                        ],
                                      ));
                                },
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ImageIcon(
                          AssetImage("assets/images/price.png"),
                          color: Color.fromRGBO(78, 201, 228, 1),
                          size: 27,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 240,
                          child: Text(
                            "300000 đồng/lần khám bệnh",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: Size(25, 25),
                          // button width and height
                          child: ClipOval(
                            child: Material(
                              //color: Colors.orange, // button color
                              child: InkWell(
                                //  splashColor: Colors.green, // splash color
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => new AlertDialog(
                                        title: new Text("Cập nhật"),
                                        content: DropdownButton<String>(
                                            isExpanded: true,
                                            hint: Text("Chọn giá tiền cho dịch vụ"),
                                            value: _valueTien,
                                            items: <String>[
                                              '100000 đồng/lần',
                                              '200000 đồng/lần',
                                              '300000 đồng/lần',
                                              '400000 đồng/lần'
                                            ].map((String value) {
                                              return new DropdownMenuItem<String>(
                                                value: value,
                                                child: new Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                _valueTien = value;
                                              });
                                            }),
                                        actions: <Widget>[
                                          Row(
                                            children: [
                                              FlatButton(
                                                child: Text('Cập nhật'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            DoctorPersonal(),
                                                      ));
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('Không!'),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop();
                                                },
                                              )
                                            ],
                                          ),
                                        ],
                                      ));
                                },
                                // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Color.fromRGBO(78, 201, 228, 1),
                                    ),
                                    // text
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
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),
        child: FlatButton(
          child: Text('Cập nhật thông tin'),
          textColor: Colors.black,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => new AlertDialog(
                      title: new Text("Xác Nhận"),
                      content: new Text(
                          "Thông tin bạn vừa cập nhật sẽ được gửi lên admin để kiểm tra."),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Đồng ý'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoctorTab(),
                                ));
                          },
                        ),
                      ],
                    ));
          },
        ),
      ),
    );
  }
}
