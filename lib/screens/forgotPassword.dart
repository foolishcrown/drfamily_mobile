import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('Update password',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  padding: EdgeInsets.only(top: 25, bottom: 10),
                ),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            autofocus: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                labelText: 'Password',
                                hintText: 'Enter your password',
                                suffixIcon: Icon(Icons.vpn_key)),
                            obscureText: true,
                            validator: (password) {
                              if (password.length < 6 || password.length > 30) {
                                return 'Please enter your password from 6 to 30 characters';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                labelText: 'Confirm password',
                                hintText: 'Enter your confirm password',
                                suffixIcon: Icon(Icons.vpn_key)),
                            obscureText: true,
                            controller: confirmPasswordController,
                            autofocus: true,
                            validator: (confirmPassword) {
                              if (confirmPassword.length < 6 ||
                                  confirmPassword.length > 30) {
                                return 'Please enter your confirm password from 6 to 30 characters';
                              }
                              if (confirmPassword != passwordController.text) {
                                return 'The password and confirmation password do not match';
                              }
                              return null;
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: FlatButton(
                                child: Text('Update'),
                                color: Colors.black12,
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.green,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    //do something
                                  }
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: FlatButton(
                                child: Text('Cancel'),
                                textColor: Colors.black,
                                color: Colors.black12,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.green,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                },
                              ),
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
      ),
    );
  }
}
