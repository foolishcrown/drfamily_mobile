import 'package:dr_family_app/class/DetailOrder.dart';
import 'package:dr_family_app/class/InformCheck.dart';


import 'package:flutter/material.dart';
class ListOrder extends StatefulWidget {
  @override
  _DoctorHomeState createState() => _DoctorHomeState();
}
class _DoctorHomeState extends State<ListOrder> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 500,
            color: Colors.indigo,
            child: Text(
              'Danh sách lịch hẹn',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
          Expanded(
            child: InformOrder(),
          ),

        ],
      ),
    );
  }
}