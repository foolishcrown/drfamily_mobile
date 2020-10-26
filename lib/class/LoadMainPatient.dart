import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationFast.dart';
import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationScreen.dart';
import 'package:dr_family_app/screens/patients/pacomponents/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class LoadingMainPatient extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingMainPatient> {
  void setupWaitTime() async{
    await Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        Navigator.push(context, new MaterialPageRoute(builder: (__) => new homeScreen()));
      });
    });
  }
  @override
  void initState() {

    super.initState();
    setupWaitTime();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpinKit Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
          backgroundColor: Colors.cyan,
          body: Center(
              child: SpinKitFoldingCube(
                color: Colors.white,
                size: 50.0,
              )
          )
      ),
    );
  }
}