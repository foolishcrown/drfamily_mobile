import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/Doctor.dart';
import 'package:dr_family_app/class/News.dart';
import 'package:dr_family_app/screens/patients/pacomponents/DoctorInformationScreen.dart';

class NewsList extends StatelessWidget {
  final News news;

  NewsList({this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13.0),
        side: BorderSide(color: Colors.blue)
      ),
      margin: EdgeInsets.fromLTRB(10.0, 9.0, 10.0, 0),
      color: Colors.white,
      shadowColor: Colors.black87,

      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),

        child: SizedBox(
          height: 100.0,

          child: ListView(
            children: <Widget>[
              ListTile(

                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //     builder: (context) => doctorInform()
                  // ));

                },

                leading: Image.asset(news.newsImg,width: 90, height: 150,),

                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      news.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      news.firstLine,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.black87),
                    ),

                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
