
import 'package:dr_family_app/screens/doctor/loginDoctor.dart';
import 'package:dr_family_app/screens/patients/loginPatient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/anhnen.jpg"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 100),
                        child: SvgPicture.asset(
                          "assets/icons/logo.svg",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 100),
                        child: Text('HomeMedic',
                            style: TextStyle(
                                fontFamily: 'Fredoka One',
                                fontStyle: FontStyle.italic,
                                fontSize: 35)),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Bạn tham gia HomeMedic với vai trò là:',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 310,
                        height: 50,
                        child: FlatButton(
                          child: Text('Bệnh nhân'),
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPatient()));
                          },
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 310,
                        height: 50,
                        child: FlatButton(
                          child: Text('Bác sĩ'),
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginDoctor()));
                            //do something
                          },
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
