import 'package:dr_family_app/screens/patients/pacomponents/UserUseService2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/class/News.dart';
import 'package:dr_family_app/class/list_news.dart';
import 'package:dr_family_app/screens/patients/pacomponents/ListDoctor.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> img = [
  'assets/picture/family-insurance_0.jpg',
  'assets/picture/5.14_Blog_FamilyDoctor_DrIsrael_BlogThumbnail.png',
  'assets/picture/Dollarphotoclub_96525452.jpg'
];

class home_body extends StatefulWidget {
  home_body({Key key}) : super(key: key);

  @override
  _home_bodyState createState() => _home_bodyState();
}

class _home_bodyState extends State<home_body>
    with SingleTickerProviderStateMixin {
  CarouselController buttonCarouselController = CarouselController();

  // List<News> news = [
  //   News(
  //       title: 'Hơn 1 triệu người chết vì virus corona',
  //       firstLine: 'Ngày 14/10/2020, Tính đến thời điểm hiện tại....',
  //       newsImg: 'assets/picture/_114678329_063573067-1.jpg'),
  //   News(
  //       title: 'Những biện pháp phòng chống virus corona',
  //       firstLine: 'Sáng ngày 13 tháng 10, tổ chức y tế thế giới...',
  //       newsImg: 'assets/picture/nhung-dieu-can-biets.jpg'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.23,
            horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: FlatButton(
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(13.0),
                    side: BorderSide(color: Colors.cyanAccent),


                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => userUseService2()));
                  },
                  color: Colors.blueAccent,

                  child: Container(

                    height: MediaQuery.of(context).size.height*0.15,
                    width:  MediaQuery.of(context).size.height*0.25,
                    // margin: const EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: [
                        Icon(FontAwesome.medkit,size: 50,color: Colors.white,),
                        SizedBox(height: 6,),
                        Text(
                          'Khám bệnh',
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: FlatButton(
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(13.0),
                    side: BorderSide(color: Colors.cyanAccent),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => listDoctor()));
                  },
                  color: Colors.blueAccent,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width:  MediaQuery.of(context).size.height*0.25,
                    child: Column(
                      children: [
                        Icon(FontAwesome5.calendar_alt,size: 50,color: Colors.white,),
                        SizedBox(height: 6,),
                        Text(
                          'Đặt lịch khám',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white,

                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

// return SafeArea(
//     child: Stack(
//   children: [
//     Positioned(
//       width: 500,
//       height: 900,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 20, right: 108, bottom: 600),
//         child: CarouselSlider(
//           items: img
//               .map((item) => Container(
//                     child: Center(
//                         child: Image.asset(item,
//                             fit: BoxFit.fill, height: 500, width: 2000)),
//                   ))
//               .toList(),
//           carouselController: buttonCarouselController,
//           options: CarouselOptions(
//             autoPlay: true,
//             enableInfiniteScroll: true,
//             enlargeCenterPage: true,
//             viewportFraction: 0.9,
//             aspectRatio: 2.0,
//             initialPage: 2,
//           ),
//         ),
//       ),
//     ),
//     Positioned(
//         top: 10,
//         bottom: 0,
//         left: 0,
//         right: 0,
//         child: Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Expanded(
//                 child: SizedBox.fromSize(
//                   size: Size(170, 60),
//                   child: RaisedButton.icon(
//                       color: Colors.white,
//                       label: Text("Đặt khám ngay"),
//                       icon: Icon(FontAwesome.user_md),
//                       textColor: Colors.black,
//                       shape: new RoundedRectangleBorder(
//                           borderRadius: new BorderRadius.circular(13.0),
//                           side: BorderSide(color: Colors.blue)),
//                       onPressed: () {}),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: SizedBox.fromSize(
//                   size: Size(170, 60),
//                   child: RaisedButton.icon(
//                       color: Colors.white,
//                       label: Text("Đặt hẹn"),
//                       icon: Icon(FontAwesome.calendar),
//                       textColor: Colors.black,
//                       shape: new RoundedRectangleBorder(
//                           borderRadius: new BorderRadius.circular(13.0),
//                           side: BorderSide(color: Colors.blue)),
//                       onPressed: () {
//                         // Navigator.push(
//                             // context,
//                             // MaterialPageRoute(
//                             //   builder: (context) => listDoctor(),
//                             // ));
//                       }),
//                 ),
//               ),
//
//               // text
//             ],
//           ),
//         )),
//     Positioned(
//         height: 500,
//         width: 400,
//         top: 400,
//         // bottom: 0,
//         // left: 0,
//         // right: 0,
//
//         child: Container(
//           margin: EdgeInsets.symmetric(vertical: 20.0),
//           height: 200.0,
//           child: Padding(
//             padding:
//                 const EdgeInsets.only(right: 10, left: 10, bottom: 220),
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: <Widget>[
//                 FlatButton(
//                   onPressed: () {},
//                   padding: const EdgeInsets.only(right: 5),
//                   child: Image.asset(
//                     'assets/picture/tempsnip.png',
//                     width: 400,
//                     scale: 0.5,
//                   ),
//                 ),
//                 FlatButton(
//                   onPressed: () {},
//                   child: Image.asset(
//                     'assets/picture/tempsnip2.png',
//                     width: 400,
//                     scale: 0.5,
//                   ),
//                 ),
//                 FlatButton(
//                   padding: const EdgeInsets.only(left: 90),
//                   onPressed: () {},
//                   child: Image.asset(
//                     'assets/picture/tempsnip3.png',
//                     width: 400,
//                     scale: 0.5,
//                   ),
//                 ),
//                 FlatButton(
//
//                   onPressed: () {},
//                   child: Image.asset(
//                     'assets/picture/tempsnip4.png',
//                     width: 400,
//                     scale: 0.5,
//                   ),
//                 ),
//
//                 // Container(
//                 //   width: 400.0,
//                 //   color: Colors.blue,
//                 // ),
//                 // Container(
//                 //   width: 400.0,
//                 //   color: Colors.green,
//                 // ),
//                 // Container(
//                 //   width: 400.0,
//                 //   color: Colors.yellow,
//                 // ),
//                 // Container(
//                 //   width: 412.0,
//                 //   color: Colors.orange,
//                 // ),
//               ],
//             ),
//           ),
//         ))
//   ],
// ));

// button width and height

// shape: new RoundedRectangleBorder(
//     borderRadius: new BorderRadius.circular(30.0)),
// color: Colors.cyan, // button color
// child: InkWell(
//   borderRadius: new BorderRadius.circular(30.0),
//   splashColor: Colors.green, // splash color
//   onTap: () {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => listDoctor(),
//         ));
//   }, // button pressed

// SizedBox(height: 25,),
// Text('Bản tin y tế ',
//
// style: TextStyle(
//   fontWeight: FontWeight.bold,
//   fontSize: 20,
//   color: Colors.black
// ),
// ),
// Column(
//   // Day se la noi lay du lieu tu phia list quotes
//   crossAxisAlignment: CrossAxisAlignment.stretch,
//   children: news.map((news) => NewsList(news: news)).toList(),
// )

//   Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Expanded(
//         child: SizedBox.fromSize(
//           size: Size(170, 60),
//           child: RaisedButton.icon(
//               color: Colors.white,
//
//               label: Text("Đặt khám ngay"),
//               icon: Icon(FontAwesome.user_md),
//               textColor: Colors.black,
//               shape: new RoundedRectangleBorder(
//                   borderRadius: new BorderRadius.circular(13.0),
//                   side: BorderSide(color: Colors.blue)),
//               onPressed: () {}),
//         ),
//       ),
//       SizedBox(width: 10,),
//       Flexible(
//         child: SizedBox.fromSize(
//           size: Size(170, 60),
//           child: RaisedButton.icon(
//               color: Colors.white,
//               label: Text("Đặt lịch"),
//               icon: Icon(FontAwesome.calendar),
//               textColor: Colors.black,
//               shape: new RoundedRectangleBorder(
//                   borderRadius: new BorderRadius.circular(13.0),
//                   side: BorderSide(color: Colors.blue)),
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => listDoctor(),
//                     ));
//               }),
//         ),
//       ),
//
//       // text
//     ],
//   ),
// ],
