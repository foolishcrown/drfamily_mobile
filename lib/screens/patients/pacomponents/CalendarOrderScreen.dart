import 'package:dr_family_app/class/OrderTreatExam.dart';
import 'package:dr_family_app/screens/patients/pacomponents/Drawer.dart';
import 'package:dr_family_app/screens/patients/pacomponents/HomeScreen.dart';
import 'package:dr_family_app/screens/patients/pacomponents/ListDoctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/calendar_order_body.dart';
import 'package:dr_family_app/class/quotes.dart';
import 'package:flutter_icons/flutter_icons.dart';

class calendarOrderScreen extends StatefulWidget {
  @override
  _calendarOrderScreenState createState() => _calendarOrderScreenState();
}

class _calendarOrderScreenState extends State<calendarOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 53),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon(FontAwesome5Solid.clinic_medical), // icon
                Padding(
                  padding:  EdgeInsets.only(right: MediaQuery.of(context).size.height*0.1),
                  child: Text("Lịch khám"),
                ),


                // text
              ],
            ),
          ),
          centerTitle: true,
        ),
        drawer: PatientDrawer(),
        body: ListOrder(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => homeScreen()
          ));
          // Add your onPressed code here!
        },
        child: Icon(FontAwesome5Solid.home),
        backgroundColor: Colors.blue,
      ),
    );

  }
}
