import 'package:dr_family_app/screens/doctor/mainDoctor.dart';
import 'package:flutter/material.dart';

class DoctorService extends StatefulWidget {
  @override
  _DoctorServiceState createState() => _DoctorServiceState();
}

class _DoctorServiceState extends State<DoctorService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trở về"),
      ),
      body: SingleChildScrollView(
        child: _showDichVu(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Column(
          children: [
            Icon(Icons.add),
            Text("Dịch vụ"),
          ],
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddService(),
              ));
        },
        // onPressed: _showThemDichVu,
      ),
    );
  }

  Widget _showDichVu() {
    if (listDichVu.length > 0) {
      return DataTable(
          dataRowHeight: 180,
          horizontalMargin: 1,
          columns: [
            DataColumn(
                label: Text(
              "Dịch vụ y tế",
              style: TextStyle(fontSize: 25),
            )),
          ],
          rows: listDichVu
              .map((p) => DataRow(cells: [
                    new DataCell(Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        //color: Colors.grey[800],
                        child: Column(
                          children: [
                            SizedBox(
                              width: 300,
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        child: Image.asset(
                                          p.anh,
                                          color:
                                              Color.fromRGBO(78, 201, 228, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 75,
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 250,
                                      child: Text(
                                        p.tenDichVu,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(78, 201, 228, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 250,
                                      child: Text(p.mota,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 5,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      p.tien,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 200,
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete_rounded,
                                            color:
                                                Color.fromRGBO(78, 201, 228, 1),
                                          ),
                                          //iconSize: 48,
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) => new AlertDialog(
                                                      title:
                                                          new Text("Xác Nhận"),
                                                      content: new Text(
                                                          "Bạn có chắc là muốn xóa !"),
                                                      actions: <Widget>[
                                                        Row(
                                                          children: [
                                                            FlatButton(
                                                              child: Text(
                                                                  'Đồng ý'),
                                                              onPressed: () {
                                                                listDichVu
                                                                    .remove(p);
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              DoctorService(),
                                                                    ));
                                                              },
                                                            ),
                                                            FlatButton(
                                                              child: Text(
                                                                  'Không!'),
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
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                          // padding: const EdgeInsets.all(8.0),
                          // child:
                        ),
                      ),
                    )),
                  ]))
              .toList());
    } else {
      return Padding(
          padding: EdgeInsets.only(top: 250),
          child: Center(
            child: Text('Bạn vẫn chưa có dịch vụ y tế'),
          ));
    }
  }

  _showThemDichVu() {
    final ten = TextEditingController();
    final mota = TextEditingController();
    final tien = TextEditingController();
    showDialog(
        context: context,
        builder: (context) => new AlertDialog(
              title: Text("Thêm dịch vụ"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      child: TextFormField(
                        controller: ten,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'Tên dịch vụ',
                            hintText: 'Nhập tên dịch vụ',
                            suffixIcon: Icon(Icons.drive_file_rename_outline)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: TextFormField(
                        controller: mota,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'Mô tả',
                            hintText: 'Nhập mô tả về dịch vụ',
                            suffixIcon: Icon(Icons.drive_file_rename_outline)),
                        maxLines: 5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: TextFormField(
                        controller: tien,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'Tiền dịch vụ',
                            hintText: 'Nhập số tiền dịch vụ',
                            suffixIcon: Icon(Icons.drive_file_rename_outline)),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                FlatButton(
                  child: Text('Thêm'),
                  onPressed: () {
                    listDichVu.add(DichVu(ten.text, mota.text, tien.text,
                        "assets/images/first-aid-kit.png"));

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorService(),
                        ));
                  },
                )
              ],
            ));
  }
}

class AddService extends StatefulWidget {
  @override
  _AddServiceState createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  final ten = TextEditingController();
  final mota = TextEditingController();
  final tien = TextEditingController();
  String _valueTien;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Thêm dịch vụ"),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              child: TextFormField(
                controller: ten,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Tên dịch vụ',
                    hintText: 'Nhập tên dịch vụ',
                    suffixIcon: Icon(Icons.drive_file_rename_outline)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0.0,
                ),
              ),
              child: DropdownButton<String>(
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
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              padding: EdgeInsets.all(3),
              child: TextFormField(
                controller: mota,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Mô tả',
                    hintText: 'Nhập mô tả về dịch vụ',
                    suffixIcon: Icon(Icons.drive_file_rename_outline)),
                maxLines: 5,
              ),
            ),
          ],
        ),
      ),
      actions: [
        FlatButton(
          child: Text('Thêm'),
          onPressed: () {
            listDichVu.add(DichVu(ten.text, mota.text, _valueTien,
                "assets/images/first-aid-kit.png"));
            print("giá ${_valueTien}");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorService(),
                ));
          },
        )
      ],
    );
  }
}

class DichVu {
  var tenDichVu;
  var mota;
  var tien;
  var anh;

  DichVu(this.tenDichVu, this.mota, this.tien, this.anh);
}

// class List<DichVu> ListDichVu{
//
//
//
// }
List<DichVu> listDichVu = new List();
