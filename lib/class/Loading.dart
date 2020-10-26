import 'package:dr_family_app/class/DoctorAcceptDialog.dart';
import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationFast.dart';
import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWaitTime() async{
    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showDialog(
          context: context,
          builder: (BuildContext context) => CustomDialog3(
            title: "Success",
            description:
            "Bác sĩ đã nhận khám\nThs.BS.CKI Nguyễn Kim Dung",
            buttonText: "Chi tiết",

          ),
        );
        // Navigator.push(context, new MaterialPageRoute(builder: (__) => new doctorInform2()));
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
          child: SpinKitDoubleBounce(
              color: Colors.white,
              size: 50.0,
            )
        )
      ),
    );
  }
}