import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jesr/utils/colors_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class homepage_teacher extends StatefulWidget {
  @override
  _homepage_teacherState createState() => _homepage_teacherState();
}

class _homepage_teacherState extends State<homepage_teacher> {
  final user = FirebaseAuth.instance.currentUser!;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page - Teacher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HOME PAGE!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: hexStringToColor("9982C2"),
              ),
            ),
            SizedBox(height: 20),
            Text('Signed in As: ' + user.email!),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Colors.deepOrange,
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
