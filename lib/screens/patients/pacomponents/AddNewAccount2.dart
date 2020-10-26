import 'package:dr_family_app/class/MyCustomForm2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/MyCustomForm.dart';

class AddNewAccount2 extends StatefulWidget {
  @override
  _AddNewAccountState createState() => _AddNewAccountState();
}

class _AddNewAccountState extends State<AddNewAccount2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm thành viên'),
        centerTitle: true,
      ),
      body: MyCustomForm2(),
    );
  }
}


