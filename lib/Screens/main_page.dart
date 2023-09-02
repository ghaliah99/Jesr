import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jesr/Screens/homepage_teacher.dart';
import 'package:jesr/Screens/signin.dart';
import 'package:jesr/Screens/welcome.dart';


class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);

@override
Widget build(BuildContext context){
  return Scaffold(

body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
builder: (context, snapshot){
  if(snapshot.hasData){
    return homepage_teacher();
  }else{
    return SignInScreen();
   return Welcome();
  }
},),

  );
}

  }


