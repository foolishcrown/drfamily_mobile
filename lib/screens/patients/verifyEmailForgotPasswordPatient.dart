import 'package:dr_family_app/screens/patients/forgotPasswordPatient.dart';
import 'package:dr_family_app/screens/patients/loginPatient.dart';
import 'package:flutter/material.dart';

class VerifyEmailForgotPasswordPatient extends StatefulWidget {
  @override
  _VerifyEmailForgotPasswordPatientState createState() => _VerifyEmailForgotPasswordPatientState();
}

class _VerifyEmailForgotPasswordPatientState extends State<VerifyEmailForgotPasswordPatient> {
  final _formKeyEmail = GlobalKey<FormState>();
  var emailController = TextEditingController();

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
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    'Đặt lại mật khẩu',
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
                    'Vui lòng nhập địa chỉ email đã đăng ký của bạn. Sau đó, một email thông báo với mã đặt lại mật khẩu sẽ được gửi cho bạn '),
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
                                hintText: 'Nhập email',
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
                        child: Text('Đặt lại mật khẩu'),
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            side:
                            BorderSide(width: 1, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          if (_formKeyEmail.currentState.validate()) {
                            // do something here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordPatient()),
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
                  child: Text('Quay lại đăng nhập'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPatient()),
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
