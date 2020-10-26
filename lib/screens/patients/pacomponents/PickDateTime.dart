import 'package:dr_family_app/class/DateCalendar.dart';
import 'package:dr_family_app/screens/patients/pacomponents/PayCheckScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/date_time_body.dart';


class pickDateTime extends StatefulWidget {
  @override
  _pickDateTimeState createState() => _pickDateTimeState();
}

class _pickDateTimeState extends State<pickDateTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chọn ngày giờ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
        body: Appointment(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => payCheckScreen(),
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
