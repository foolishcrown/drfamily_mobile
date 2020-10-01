import 'package:flutter/material.dart';

import 'login.dart';

class UserRegister extends StatefulWidget {
  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var fullNameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var addressController = TextEditingController();
  var phoneController = TextEditingController();
  var dateOfBirthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Register',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.only(top: 25),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          suffixIcon: Icon(Icons.email)),
                      controller: emailController,
                      validator: (email) {
                        if (email.isEmpty) {
                          return 'Please enter email';
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
                          labelText: 'Full name',
                          hintText: 'Enter your full name',
                          suffixIcon: Icon(Icons.account_box)),
                      autofocus: true,
                      controller: fullNameController,
                      validator: (fullName) {
                        if (fullName.isEmpty) {
                          return 'Please enter your full name';
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
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          suffixIcon: Icon(Icons.vpn_key)),
                      obscureText: true,
                      autofocus: true,
                      controller: passwordController,
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
                      autofocus: true,
                      controller: confirmPasswordController,
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
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          labelText: 'Address',
                          hintText: 'Enter your address',
                          suffixIcon: Icon(Icons.add_location)),
                      autofocus: true,
                      controller: addressController,
                      validator: (address) {
                        if (address.isEmpty) {
                          return 'Please enter your address';
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
                          labelText: 'Phone number',
                          hintText: 'Enter your phone number',
                          suffixIcon: Icon(Icons.phone_android)),
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      autofocus: true,
                      validator: (phone) {
                        if (phone.isEmpty) {
                          return 'Please enter your phone';
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
                          labelText: 'Date of birth',
                          hintText: 'Enter your date of birth',
                          suffixIcon: Icon(Icons.date_range)),
                      keyboardType: TextInputType.datetime,
                      autofocus: true,
                      controller: dateOfBirthController,
                      validator: (dateOfBirth) {
                        if (dateOfBirth.isEmpty) {
                          return 'Please enter your date of birth';
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
                          child: Text('Register'),
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
                              MaterialPageRoute(builder: (context) => Login()),
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
      ),
    );
  }
}
