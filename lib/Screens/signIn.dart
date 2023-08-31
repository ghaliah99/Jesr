
import 'package:flutter/material.dart';
import 'package:jesr/utils/colors_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            hexStringToColor("FFFFFF"),
            hexStringToColor("FFFFFF"),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: reusableTextField(
                "Email",
                Icons.person_outline,
                false,
                _emailTextController,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: reusableTextField(
                "Password",
                Icons.lock_outline,
                true,
                _passwordTextController,
              ),
            ),
            const SizedBox(
              height: 20, // Add some space between the text fields and the button
            ),
            ElevatedButton(
              onPressed: () {
                // Add your submit button action here
              },
              style: ElevatedButton.styleFrom(
                primary: hexStringToColor("9982C2"),
                onPrimary: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}



TextField reusableTextField(
    String text, IconData icon, bool isPasswordType, TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
  cursorColor: hexStringToColor("00B7B1"),
    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: hexStringToColor("9982C2"),
      ),
      
      labelText: text,
      labelStyle: TextStyle(color: Color.fromARGB(255, 26, 13, 13).withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: hexStringToColor("9982C2").withOpacity(0.05), // Change fill color
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 10, style: BorderStyle.none),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
    }

// You can keep the hexStringToColor function implementation here or import it.
}