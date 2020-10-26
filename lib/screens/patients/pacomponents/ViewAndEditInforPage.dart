import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/ViewAndEditForm.dart';


class ViewAndEditInforPage extends StatefulWidget {
  @override
  _ViewAndEditInforPageState createState() => _ViewAndEditInforPageState();
}

class _ViewAndEditInforPageState extends State<ViewAndEditInforPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin'),
        centerTitle: true,
      ),
      body: ViewAndEditForm(),
    );
  }
}
