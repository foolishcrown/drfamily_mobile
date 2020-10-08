import 'package:dr_family_app/screens/doctors/loginDoctor.dart';
import 'package:flutter/material.dart';

class ForgotPasswordDoctor extends StatefulWidget {
  @override
  _ForgotPasswordDoctorState createState() => _ForgotPasswordDoctorState();
}

class _ForgotPasswordDoctorState extends State<ForgotPasswordDoctor> {
  final _formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  final _formKeyCode = GlobalKey<FormState>();
  var verifyController = TextEditingController();

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
                  child: Text('Cập nhật mật khẩu',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: EdgeInsets.only(top: 25, bottom: 10),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                      'Vui lòng nhập mã code từ email của bạn để cập nhật mật khẩu '),
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
                                  labelText: 'Mã code',
                                  hintText: 'Nhập mã code',
                                  suffixIcon: Icon(Icons.code)),
                              validator: (email) {
                                if (email.isEmpty) {
                                  return 'Vui lòng nhập mã code';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
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
                                labelText: 'Mật khẩu',
                                hintText: 'Nhập mật khẩu',
                                suffixIcon: Icon(Icons.vpn_key)),
                            obscureText: true,
                            validator: (password) {
                              if (password.length < 6 || password.length > 30) {
                                return 'Vui lòng nhập mật khẩu từ 6 đến 30 ký tự';
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
                                labelText: 'Mật khẩu xác nhận',
                                hintText: 'Nhập mật khẩu xác nhận',
                                suffixIcon: Icon(Icons.vpn_key)),
                            obscureText: true,
                            controller: confirmPasswordController,
                            autofocus: true,
                            validator: (confirmPassword) {
                              if (confirmPassword.length < 6 ||
                                  confirmPassword.length > 30) {
                                return 'Vui lòng nhập mật khẩu của bạn từ 6 đến 30 ký tự';
                              }
                              if (confirmPassword != passwordController.text) {
                                return 'Mật khẩu và mật khẩu xác nhận không khớp';
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
                                child: Text('Cập nhật'),
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    //do something
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginDoctor()),
                                    );
                                  }
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: FlatButton(
                                child: Text('Hủy'),
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginDoctor()),
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
