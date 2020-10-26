import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

class CallPhone extends StatefulWidget {
  @override
  _CallPhoneState createState() => _CallPhoneState();
}

class CallService {
  void call(String number) => launch('tel:$number');
}

GetIt locator = GetIt as GetIt;

void set() {
  locator.registerSingleton(CallService);
}

class _CallPhoneState extends State<CallPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trở về'),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: DialPad(
              enableDtmf: true,
              backspaceButtonIconColor: Colors.red,
              makeCall: (number) {
                print(number);
              })),
    );
  }
}
