import 'package:dr_family_app/class/DateCalendar.dart';
import 'package:dr_family_app/screens/patients/pacomponents/AddNewAccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/quotes.dart';
import 'package:dr_family_app/class/user_use_service.dart';
import 'package:dr_family_app/screens/patients/pacomponents/PickDateTime.dart';
import 'package:flutter_icons/flutter_icons.dart';

class userUseService extends StatefulWidget {
  @override
  _UserUseServiceState createState() => _UserUseServiceState();
}

class _UserUseServiceState extends State<userUseService> {
  List<Quote> quotes = [
    Quote(
        name: 'Mai Văn A',
        age: 21,
        gender: 'Nam',
        img: 'assets/picture/download.png',
        relationShip: 'Tôi'
    ),

    Quote(
        name: 'Ngô Văn Sang',
        age: 22,
        gender: 'Nữ',
        img: 'assets/picture/download.png',
        relationShip: 'Vợ'
    ),

  ];

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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height+20,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Card(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      // Day se la noi lay du lieu tu phia list quotes
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: quotes
                          .map((quote) => UserUseService(quote: quote))
                          .toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
                height: 230,

              ),
              // SizedBox.fromSize(
              //   size: Size(30, 50), // button width and height
              //
              //   child: Material(
              //     shape: new RoundedRectangleBorder(
              //         borderRadius: new BorderRadius.circular(13.0), side: BorderSide(color: Colors.blue)),
              //     color: Colors.white, // button color
              //     child: InkWell(
              //       borderRadius: new BorderRadius.circular(13.0),
              //       splashColor: Colors.green, // splash color
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => pickDateTime(),
              //             ));
              //       }, // button pressed
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: <Widget>[
              //           Text(
              //             " Tiếp tục",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 20,
              //             ),
              //           ), // text
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => AddNewAccount()
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
                  builder: (context) => pickDateTime(),
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
