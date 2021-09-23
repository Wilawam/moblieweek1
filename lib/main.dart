import 'package:flutter/material.dart';
import 'package:moblieappweek1/sceen/dashboard.dart';
import 'package:moblieappweek1/sceen/login.dart';
import 'package:moblieappweek1/sceen/register.dart';


import 'config/constant.dart'; //ไม่ได้ import มา
import 'sceen/index.dart'; //อ๋ฮ 5555 ขอลองรันหนอ่ย


void main() => runApp(KMUTNB());

class KMUTNB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Login': (context) => Login(),
        'Register' : (context) => Register(),
        'Dashboard' : (context) => Dashboard(),
      },
      theme: ThemeData(
        primaryColor: sColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
