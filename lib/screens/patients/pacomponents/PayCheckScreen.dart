import 'package:dr_family_app/class/Complete.dart';
import 'package:dr_family_app/screens/patients/pacomponents/CalendarOrderScreen.dart';
import 'package:dr_family_app/screens/patients/pacomponents/MyStateFulWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_family_app/class/Doctor.dart';
import 'package:dr_family_app/class/paycheck_body.dart';
// import 'package:flutterwave_momo_ghana/flutterwave_momo_ghana.dart';

class payCheckScreen extends StatefulWidget {
  @override
  _payCheckScreenState createState() => _payCheckScreenState();
}

class _payCheckScreenState extends State<payCheckScreen> {
  List<Doctor> doctors = [
    Doctor(
      name: 'Ts-Bs Nguyễn Văn A',
      experient: "Bv: Y dược",
      education: 'Đh Y Dược',
      img: 'assets/picture/Icon-Bacsi.png',
      fee: '450.000',
    ),
  ];
  String amount = "10";
  String secret_token = "Your-secret-token-here";
  String currency = "GHS";
  String email = "someone@example.com";
  String transaction_ref = "some-reference-number-you generated";
  String phone_number= "valid-ghanaian-phone-number";
  String network = "MTN | VODAFONE | TIGO";
  String redirect_url = "your-magic-api-link";
  String full_name = "Fellow Ghanaian";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thông tin tổng quát',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: PayCheck(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => CustomDialog(
                title: "Success",
                description:
                "THÀNH CÔNG",
                buttonText: "Đóng",
              ),
            );
            // Navigator.of(context).push(
            //   CupertinoPageRoute(builder: (context) =>
            //       FlutterwaveGhanaMOMO(amount: amount, phoneNumber: phone_number, network: network, currency: currency, secretToken: secret_token, redirectUrl: redirect_url, email: email, transactionRef: transaction_ref, fullName: full_name),
            //   ),
            // );
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(13.0),
              side: BorderSide(color: Colors.blue)),
          color: Colors.white,
          textColor: Colors.black,
          child: Text(
            'Tiếp tục',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
