import 'package:flutter/material.dart';
import 'package:jesr/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/Authentication/signin.dart';
import 'Screens/Authentication/main_page.dart';
import 'Screens/Authentication/signUpTeacher.dart';
import 'package:jesr/Screens/Authentication/main_page.dart';



void main() async {
  await initializeApp();
  runApp(const MyApp());
}

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


 @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    //  home: const SignInScreen(),
    home: main_page(),
  // home: SignupScreen(),
    );
  }
}
