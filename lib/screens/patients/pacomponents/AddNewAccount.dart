import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/MyCustomForm.dart';

class AddNewAccount extends StatefulWidget {
  @override
  _AddNewAccountState createState() => _AddNewAccountState();
}

class _AddNewAccountState extends State<AddNewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm thành viên'),
        centerTitle: true,
      ),
      body: MyCustomForm(),

    );
  }
}


