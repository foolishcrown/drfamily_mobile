import 'package:flutter/material.dart';

class DoctorHistoryDetail extends StatefulWidget {
  @override
  _DoctorHistoryDetailState createState() => _DoctorHistoryDetailState();
}

class _DoctorHistoryDetailState extends State<DoctorHistoryDetail> {
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
            // Container(
            //   padding: EdgeInsets.all(5),
            //   alignment: Alignment(0.0, 0.0),
            //   child: Text(
            //     'Đơn thuốc',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            // ),
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
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Chuẩn đoán ban đầu",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.grey)),
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        ' Bị cảm cúm thông thường và do bị viêm họng và sốt cao  ',
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 21)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment(0.0, 0.0),
              child: Text(
                'Đơn thuốc',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              child: _showTableMedical(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _showTableMedical() {
    return Scrollbar(
      controller: _scrollController,
      isAlwaysShown: true,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text(
                "Tên thuốc",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
              )),
              DataColumn(
                  label: Text(
                "Số lượng\n(viên/gói)",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
              )),
              DataColumn(
                  label: Text(
                "Liều dùng\n(viên-gói/buổi)",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
              )),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Container(
                    width: 80,
                    child: Text("Anfachim"),
                  )
                      // Text(e.tenThuoc),
                      ),
                  DataCell(Text("20")),
                  DataCell(Column(
                    children: [
                      Row(
                        children: [
                          Text('Sáng: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Trưa: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Chiều: '),
                          Text("1"),
                        ],
                      )
                    ],
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Container(
                    width: 80,
                    child: Text("Anfasilin"),
                  )
                    // Text(e.tenThuoc),
                  ),
                  DataCell(Text("10")),
                  DataCell(Column(
                    children: [
                      Row(
                        children: [
                          Text('Sáng: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Trưa: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Chiều: '),
                          Text("1"),
                        ],
                      )
                    ],
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Container(
                    width: 80,
                    child: Text("Sunfagalidan"),
                  )
                    // Text(e.tenThuoc),
                  ),
                  DataCell(Text("20")),
                  DataCell(Column(
                    children: [
                      Row(
                        children: [
                          Text('Sáng: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Trưa: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Chiều: '),
                          Text("1"),
                        ],
                      )
                    ],
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Container(
                    width: 80,
                    child: Text("Penecilin"),
                  )
                    // Text(e.tenThuoc),
                  ),
                  DataCell(Text("20")),
                  DataCell(Column(
                    children: [
                      Row(
                        children: [
                          Text('Sáng: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Trưa: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Chiều: '),
                          Text("1"),
                        ],
                      )
                    ],
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Container(
                    width: 80,
                    child: Text("Tritocin"),
                  )
                    // Text(e.tenThuoc),
                  ),
                  DataCell(Text("10")),
                  DataCell(Column(
                    children: [
                      Row(
                        children: [
                          Text('Sáng: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Trưa: '),
                          Text("1"),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Chiều: '),
                          Text("1"),
                        ],
                      )
                    ],
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
