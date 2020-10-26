import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/quotes.dart';
import 'package:dr_family_app/screens/patients/pacomponents/PickDateTime.dart';



class UserUseService extends StatefulWidget {
  final Quote quote;

  UserUseService({this.quote});

  @override
  _UserUseServiceState createState() => _UserUseServiceState();
}

class _UserUseServiceState extends State<UserUseService> {
  bool pressAttention1 = false;

  @override
  Widget build(BuildContext context) {



    return SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: SizedBox(

          height: 90.0,
          child: ListView(
            children: <Widget>[
          SizedBox.fromSize(
            size: Size(100, 90),
          child:RaisedButton(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10),side: BorderSide(color: Colors.black87)),
            color:  pressAttention1 ? Colors.lightBlue : Colors.white,

              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //     builder: (context) => pickDateTime()
                // ));
                setState(() => pressAttention1 = !pressAttention1);

              },// splash color

              child: Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20,),
                  CircleAvatar(
                      backgroundImage: AssetImage(widget.quote.img),
                      radius: 30,
                    ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Name: ' + widget.quote.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        Text(
                          'Tuổi: ' + widget.quote.age.toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.black87),
                        ),
                        Text(
                          'Mối quan hệ: ' + widget.quote.relationShip,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.black87),
                        ),

                      ],
                    ),

                ],
              ),
            ),
          ),
            ],
        ),
        ),
      ),
    );
  }
}
