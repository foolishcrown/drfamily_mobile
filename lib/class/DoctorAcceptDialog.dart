import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationFast.dart';
import 'package:dr_family_app/screens/patients/pacomponents/HomeScreen.dart';
import 'package:dr_family_app/screens/patients/pacomponents/ListDoctor.dart';
import 'package:dr_family_app/screens/patients/pacomponents/MyStateFulWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomDialog3 extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  CustomDialog3({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
  });



  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(

          padding: EdgeInsets.only(
            top: Consts.avatarRadius + Consts.padding,
            bottom: Consts.padding,
            left: Consts.padding,
            right: Consts.padding,
          ),
          margin: EdgeInsets.only(top: Consts.avatarRadius),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => doctorInform2(),
                        )); // To close the dialog
                  },
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: Consts.padding,
          right: Consts.padding,
          child: CircleAvatar(
            radius: 66,
            backgroundColor: Color(0xffFDCF09),
            child: CircleAvatar(
              radius: 66,
              backgroundImage: AssetImage('assets/picture/Capture1.PNG'),
            ),
          )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}