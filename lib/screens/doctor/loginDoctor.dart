import 'package:dr_family_app/screens/doctor/doctorHome.dart';
import 'package:dr_family_app/screens/doctor/doctorTab.dart';

import 'doctorRegister.dart';
import 'verifyEmailForgotPasswordDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'mainDoctor.dart';


class LoginDoctor extends StatefulWidget {
  @override
  _LoginDoctorState createState() => _LoginDoctorState();
}

class _LoginDoctorState extends State<LoginDoctor> {
  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<String> signInWithGoogle() async {
    await Firebase.initializeApp();

    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential authResult =
        await _auth.signInWithCredential(credential);
    final User user = authResult.user;

    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final User currentUser = _auth.currentUser;
      assert(user.uid == currentUser.uid);

      print('signInWithGoogle succeeded: $user');
      return '$user';
    }
    // WMG6aujwWCdDWUDK7xGkzN205aX2
    return null;
  }

  Future<void> signOutGoogle() async {
    await googleSignIn.signOut();

    print("User Signed Out");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Quay lại'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: SvgPicture.asset(
                      "assets/icons/doctor.svg",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Container(
                    //padding: EdgeInsets.all(10),
                    child: Text(
                      'Chào mừng bạn đến với HomeMedic:',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text('Đăng nhập',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
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
                                  hintText: 'Nhập email của bạn',
                                  suffixIcon: Icon(Icons.email)),
                              //validation
                              validator: (email) {
                                if (email.isEmpty) {
                                  return 'Vui lòng nhập email của bạn';
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                labelText: 'Mật khẩu',
                                hintText: 'Nhập mật khẩu của bạn',
                                suffixIcon: Icon(Icons.vpn_key)),
                            obscureText: true,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Vui lòng nhập mật khẩu của bạn';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          alignment: Alignment.bottomRight,
                          child: FlatButton(
                            child: Text('Quên mật khẩu !'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        VerifyEmailForgotPasswordDoctor()),
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
                                child: Text('Đăng nhập'),
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    // do something here
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DoctorTab()),
                                    );
                                  }
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: FlatButton(
                                child: Text('Đăng ký'),
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DoctorRegister()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      height: 30,
                      color: Colors.black,
                    )),
                    Text("Hoặc"),
                    Expanded(
                        child: Divider(
                      height: 30,
                      color: Colors.black,
                    )),
                  ]),
                  _signInButton(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DoctorTab()));
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage("assets/images/google_logo.png"),
                height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Đăng nhập với Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class DoctorUserDetail {
//   final String providerDetail;
//   final String userName;
//   final String photoUrl;
//   final String userEmail;
//   final List<DoctorProviderDetail> providerData;
//
//   DoctorUserDetail(this.providerDetail, this.userName, this.photoUrl,
//       this.userEmail, this.providerData);
// }
//
// class DoctorProviderDetail {
//   final String doctorProviderDetail;
//
//   DoctorProviderDetail(this.doctorProviderDetail);
// }
