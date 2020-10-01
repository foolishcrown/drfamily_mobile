import 'package:dr_family_app/screens/forgotPassword.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class VerifyEmailForgotPassword extends StatefulWidget {
  @override
  _VerifyEmailForgotPasswordState createState() =>
      _VerifyEmailForgotPasswordState();
}

class _VerifyEmailForgotPasswordState extends State<VerifyEmailForgotPassword> {
  final _formKeyEmail = GlobalKey<FormState>();
  final _formKeyCode = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var verifyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Password Reset',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    'Please enter your registered email address. An email notification with a password reset code will then be sent to you'),
              ),
              Container(
                child: Form(
                  key: _formKeyEmail,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            autofocus: true,
                            controller: emailController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                                ),
                                labelText: 'Email',
                                hintText: 'Enter your email',
                                suffixIcon: Icon(Icons.email)),
                            validator: (email) {
                              if (email.isEmpty) {
                                return 'Please enter email';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      FlatButton(
                        child: Text('Reset Password'),
                        color: Colors.black12,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.green,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          if (_formKeyEmail.currentState.validate()) {
                            // do something here

                          }
                          //do some thing here
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: Text(
                    'Please enter the reset code from your email to update the password '),
              ),
              Container(
                child: Form(
                  key: _formKeyCode,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            autofocus: true,
                            controller: verifyController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                                ),
                                labelText: 'Reset code',
                                hintText: 'Enter your reset code',
                                suffixIcon: Icon(Icons.code)),
                            validator: (email) {
                              if (email.isEmpty) {
                                return 'Please enter your reset code';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      FlatButton(
                        child: Text('Verification code'),
                        color: Colors.black12,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.green,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          if (_formKeyCode.currentState.validate()) {
                            // do something here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotPassword()),
                            );
                          }
                          //do some thing here
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.only(right: 10),
                child: FlatButton(
                  child: Text('Back to login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
