import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jesr/Screens/signin.dart';
import 'package:jesr/utils/colors_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jesr/Screens/signin.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  WelcomeScreen createState() => WelcomeScreen();
}

class WelcomeScreen extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_short.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 170),
                      child: Center(
                        child: Text(
                          "Welcome to",
                          style: TextStyle(
                            color: hexStringToColor("9982C2"),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Second image (logo)
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Center(
                child: Image.asset(
                  'assets/images/jesr.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),

            SizedBox(height: 110),

            Container(
              margin: EdgeInsets.all(30),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("B49EDD"),
                    hexStringToColor("9982C2"),
                  ],
                ),
              ),

              // Login Button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),

                  // Apply your gradient to the button
                  primary: Colors.transparent, // Set transparent primary color
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.all(30),
              margin: EdgeInsets.only(left: 30.0, right: 30),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent, // Make the color clear
                    hexStringToColor("FFFFF"),
                  ],
                ),
                border: Border.all(
                  color: hexStringToColor("9982C2"),
                  width: 2,
                ),
              ),

              // Register Button
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),

                  // Apply your gradient to the button
                  primary: Colors.transparent, // Set transparent primary color
                ),
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: hexStringToColor("9982C2"),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
