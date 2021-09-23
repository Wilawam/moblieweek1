import 'package:flutter/material.dart';
import '../config/constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: -20,
              left: -30,
              child: Image.asset(
                "asset/image/orange.png",
                width: size.width * 0.2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "asset/image/LOGO.png",
                  width: size.width * 0.35,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to KMUTNB",
                  style: TextStyle(
                   // color: Colors.amber[900],
                    color: pColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1617112513579-d8755a2c4693?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                  ),
                  width: size.width * 0.4,
                  height: size.height * 0.4,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello World");
                    Navigator.pushNamed(context, 'Login');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(100, 10, 120, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello World");
                    Navigator.pushNamed(context, 'Register');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
