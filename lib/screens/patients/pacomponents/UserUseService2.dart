import 'package:dr_family_app/class/DateCalendar.dart';
import 'package:dr_family_app/class/ListPatients.dart';
import 'package:dr_family_app/screens/patients/pacomponents/AddNewAccount.dart';
import 'package:dr_family_app/screens/patients/pacomponents/AddNewAccount2.dart';
import 'package:dr_family_app/screens/patients/pacomponents/InformationFromPatient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/quotes.dart';
import 'package:dr_family_app/class/user_use_service.dart';
import 'package:dr_family_app/screens/patients/pacomponents/PickDateTime.dart';
import 'package:flutter_icons/flutter_icons.dart';

class userUseService2 extends StatefulWidget {
  @override
  _UserUseServiceState createState() => _UserUseServiceState();
}

class _UserUseServiceState extends State<userUseService2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bệnh nhân',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(

        child: Container(
          margin: EdgeInsets.symmetric( vertical: 10),
          child: PatientList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => AddNewAccount2()
          ));
          // Add your onPressed code here!
        },
        child: Icon(FontAwesome.user_plus),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => informationFromPatient(),
                ));
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(13.0),
              side: BorderSide(color: Colors.blue)),
          color: Colors.white,
          textColor: Colors.black,
          child: Text(
            'Tiếp tục',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
