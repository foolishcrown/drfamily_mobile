import 'package:dr_family_app/class/quotes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PatientList extends StatefulWidget {
  // final Doctor doctor;
  //
  // DoctorList(this.doctor);
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<PatientList> {
  List<Quote> quotes = [
    Quote(
        name: 'Mai Văn A',
        age: 21,
        gender: 'Nam',
        img: 'assets/picture/download.png',
        relationShip: 'Tôi'),
    Quote(
        name: 'Ngô Văn Sang',
        age: 22,
        gender: 'Nữ',
        img: 'assets/picture/download.png',
        relationShip: 'Vợ'),
  ];

  bool pressAttention1 = false;
  bool pressAttention2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height * 0.79,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric( horizontal: 10),
          child: Column(
            children: [
              FlatButton(
                onPressed: () => {
                  setState(() => pressAttention1 = !pressAttention1),
                  setState(() => pressAttention2 = false),
                },
                child: Container(

                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 10,right: 0),
                    decoration: BoxDecoration(
                      color: pressAttention1 ? Colors.cyan : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          width: 64,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(quotes[0].img),
                            radius: 30,
                          ),
                        ),
                        Container(
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    quotes[0].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Tuổi: ' + quotes[0].age.toString(),
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    'Giới tính:' + quotes[0].gender,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    'Mối quan hệ: ' + quotes[0].relationShip,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )),
              ),
              FlatButton(
                onPressed: () =>{
                  setState(() => pressAttention2 = !pressAttention2),
                  setState(() => pressAttention1 = false),
                },
                child: Container(

                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 10, right: 0),
                    decoration: BoxDecoration(
                      color: pressAttention2 ? Colors.cyan : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          width: 64,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(quotes[0].img),
                            radius: 30,
                          ),
                        ),
                        Container(
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    quotes[1].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Tuổi: ' + quotes[1].age.toString(),
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    'Giới tính:' + quotes[1].gender,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    'Mối quan hệ: ' + quotes[1].relationShip,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}

// Card(
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(13.0),
//   ),
//   margin: EdgeInsets.fromLTRB(10.0, 9.0, 10.0, 0),
//   color: Colors.white,
//   shadowColor: Colors.black,
//   child: ListTile(
//     onTap: () {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => doctorInform()));
//     },
//     leading: CircleAvatar(
//       backgroundImage: AssetImage(doctor.img),
//       radius: 30,
//     ),
//     title: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           doctor.name,
//           textAlign: TextAlign.left,
//           style: TextStyle(
//               fontSize: 20,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87),
//         ),
//         Text(
//           'Làm việc tại: ' + doctor.experient,
//           textAlign: TextAlign.left,
//           style: TextStyle(
//               fontSize: 15,
//               fontStyle: FontStyle.italic,
//               color: Colors.black87),
//         ),
//         Text(
//           'Trình độ : ' + doctor.education,
//           textAlign: TextAlign.left,
//           style: TextStyle(
//               fontSize: 15,
//               fontStyle: FontStyle.italic,
//               color: Colors.black87),
//         ),
//       ],
//     ),
//   ),
// )
// child: Padding(
//   padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),

// day la noi de rate sao va gia tien cua bac si

// Padding(
// padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
// child: Row(
// children: <Widget>[
// SizedBox(width: 20,),
// Text(
// doctor.rate + ' ',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 15
// ),
// ),
// Icon(
// FontAwesome5Solid.star,
// color: Colors.yellow,
//
// size: 20),
//
// SizedBox(
// width: 130,
// ),
// Text(
// 'Phí: '+doctor.fee + 'VND',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 15
// ),
// )
// ],
// ),
// )

// ListTile(
//
// onTap: () {
// Navigator.push(context,
// MaterialPageRoute(builder: (context) => doctorInform()));
// },
// leading: CircleAvatar(
// backgroundImage: AssetImage(doctor.img),
// radius: 30,
// ),
// title: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text(
// doctor.name,
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 20,
// fontStyle: FontStyle.italic,
// fontWeight: FontWeight.bold,
// color: Colors.black87),
// ),
// Text(
// 'Làm việc tại: ' + doctor.experient,
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 15,
// fontStyle: FontStyle.italic,
// color: Colors.black87),
// ),
// Text(
// 'Trình độ : ' + doctor.education,
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 15,
// fontStyle: FontStyle.italic,
// color: Colors.black87),
// ),
// ],
// ),
// ),
