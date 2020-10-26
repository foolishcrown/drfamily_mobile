import 'package:dr_family_app/screens/patients/pacomponents/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/class/Doctor.dart';
import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationScreen.dart';

class DoctorList4 extends StatefulWidget {
  // final Doctor doctor;
  //
  // DoctorList(this.doctor);
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList4> {
  List<Doctor> doctors = [

    Doctor(
        name: 'Ths-Bs.CKI Trần Đăng Khoa',
        experient: "(Cơ xương khớp, Dị ứng)",
        education: 'Đh Y Phạm Ngọc Thạch',
        img: 'assets/picture/Capture2.PNG',
        fee: '300.000',
        rate: '4.3'),

  ];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height-400,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return FlatButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            doctorInform()));
              },
              child: Container(
                  height: 100,
                  width:  MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                      bottom: 10, left: 13, right: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1.0,
                    ),
                  ),
                  child: Row(

                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                        height: 64,
                        width: 64,
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage(doctors[index].img),
                          radius: 30,
                        ),
                      ),
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doctors[index].name,
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  doctors[index].experient,
                                  style: TextStyle(fontSize: 10),
                                ),
                                Divider(
                                  color: Colors.green,
                                  thickness: 1,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      doctors[index].rate + ' ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                    Icon(FontAwesome5Solid.star,
                                        color: Colors.yellow,
                                        size: 20),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Text(
                                      'Phí: ' +
                                          doctors[index].fee +
                                          'VND',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),

                      Container(
                        alignment: Alignment.center,
                        width:   25,
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          doctorInform()));
                            }),
                      )
                    ],
                  )),
            );
          },
        ),
      ),
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
