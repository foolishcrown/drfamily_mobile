
import 'package:dr_family_app/screens/userRegister.dart';
import 'package:flutter/material.dart';

import 'verifyEmailForgotPassoword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 100),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  padding: EdgeInsets.all(10),
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      autofocus: true,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          suffixIcon: Icon(Icons.email)),
                      //validation
                      validator: (email) {
                        if (email.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
                    )),
                Container(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    autofocus: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        suffixIcon: Icon(Icons.vpn_key)),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    child: Text('Forgot Password'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyEmailForgotPassword()),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: FlatButton(
                        child: Text('Sign in'),
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
                            // do something here

                          }
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: FlatButton(
                        child: Text('Sign up'),
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
                                builder: (context) => UserRegister()),
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
      ),
    );
  }
}
