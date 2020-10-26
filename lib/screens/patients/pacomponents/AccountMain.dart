import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dr_family_app/class/quotes.dart';
import 'package:dr_family_app/class/quote_card.dart';
import 'package:dr_family_app/screens/patients/pacomponents/AddNewAccount.dart';
class MainAccountWidget extends StatefulWidget {
  @override
  const MainAccountWidget({Key key}) : super(key: key);

  _MainAccountWidgetState createState() => _MainAccountWidgetState();
}

class _MainAccountWidgetState extends State<MainAccountWidget> {
  // Day se la noi tao ra list data ao
  List<Quote> quotes = [
          Quote(name: 'Mai Nguyễn Nhật A', age: 21, gender: 'Nam', img: 'assets/picture/download.png',relationShip: 'Tôi'),
          Quote(name: 'Ngô Văn Sang', age: 22, gender: 'Nữ',img: 'assets/picture/download.png',relationShip: 'Vợ'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Gia đình'),
        centerTitle: true,
      ),
    body: Center(
      child:Card(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),

      child: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Column(
          // Day se la noi lay du lieu tu phia list quotes
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),


        ),

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
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );

  }
}


