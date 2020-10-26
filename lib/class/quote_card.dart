
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dr_family_app/class/quotes.dart';
import 'file:///E:/works/Ki7/HCI/patientsapp/lib/mainviews/ViewAndEditInforPage.dart';

enum UserSelection { choice }
class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({this.quote});
  UserSelection _selection =  UserSelection.choice;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13.0),
      ),
      margin: EdgeInsets.fromLTRB(10.0, 9.0, 10.0, 0),
      color: Colors.white60,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 23, 0, 0),
        child:SizedBox(
          height: 100.0,
        child: ListView(

          children: <Widget>[
            ListTile(

              leading: CircleAvatar(
                backgroundImage: AssetImage(quote.img),
                radius: 30,

              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text(
                    'Tên: ' + quote.name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Text(
                    'Tuổi: ' + quote.age.toString(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87),
                  ),
                  Text(
                    'Giới tính: ' + quote.gender,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87),
                  ),
                  Text(
                    'Mối quan hệ: ' + quote.relationShip,
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