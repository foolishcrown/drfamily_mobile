import 'package:dr_family_app/screens/patients/pacomponents/AccountMain.dart';
import 'package:dr_family_app/screens/patients/pacomponents/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/class/HomeBody.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(

          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Icon(FontAwesome5Solid.clinic_medical), // icon
                  Padding(
                    padding: const EdgeInsets.only(right: 75),
                    child: Text("   Home Medic"),
                  ),

                  // IconButton(
                  //     icon: Icon(FontAwesome5Solid.user_circle), onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) =>
                  //               MainAccountWidget()));
                  // })
                  // ,
                  // text
                ],
              ),
            ),
          ),
          centerTitle: true,
          // actions: <Widget>[
          //   PopupMenuButton(
          //     icon: Icon(Icons.menu),
          //     itemBuilder: (context) => [
          //       PopupMenuItem(
          //         child: SizedBox.fromSize(
          //           size: Size(190, 40),
          //         child: RaisedButton.icon(
          //             label: Text("Gọi hỗ trợ"),
          //             icon: Icon(Icons.phone),
          //             textColor: Colors.black,
          //             shape: new RoundedRectangleBorder(
          //                 borderRadius: new BorderRadius.circular(30.0),
          //                 side: BorderSide(color: Colors.black12)),
          //             onPressed: () {}),
          //       ),
          //       ),
          //       PopupMenuItem(
          //         child: SizedBox.fromSize(
          //           size: Size(190, 40),
          //           child: RaisedButton.icon(
          //               label: Text("Điều khoản"),
          //               icon: Icon(Icons.assignment_late),
          //               textColor: Colors.black,
          //               shape: new RoundedRectangleBorder(
          //                   borderRadius: new BorderRadius.circular(30.0),
          //                   side: BorderSide(color: Colors.black12)),
          //               onPressed: () {}),
          //         ),
          //       ),
          //       PopupMenuItem(
          //         child: SizedBox.fromSize(
          //           size: Size(190, 40),
          //           child: RaisedButton.icon(
          //               label: Text("Thông tin ứng dụng"),
          //               icon: Icon(FontAwesome5.question_circle),
          //               textColor: Colors.black,
          //               shape: new RoundedRectangleBorder(
          //                   borderRadius: new BorderRadius.circular(30.0),
          //                   side: BorderSide(color: Colors.black12)),
          //               onPressed: () {}),
          //         ),
          //       ),
          //     ],
          //   ),
          // ],
        ),
        drawer: PatientDrawer(),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/picture/imagesbackground.jpg"),
                fit: BoxFit.fill,

              ),
            ),
            child: home_body(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => MainAccountWidget()
            ));
            // Add your onPressed code here!
          },
          child: Icon(FontAwesome5Solid.user_circle),
          backgroundColor: Colors.indigo,
        ),
      )
    );


  }
}
