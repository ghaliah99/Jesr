
import 'package:flutter/material.dart';
import 'package:jesr/utils/colors_utils.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //logo
        child: Container(
          child: Column(
            children: <Widget>[
              	            Container(
	              height: 400,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/images/background.png'),
	                  fit: BoxFit.fill
	                )
                ),
 child: Stack(
	                children: <Widget>[

  Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Center(
                          child: Text(
                            "Welcome to JESR",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu',
                            ),
                          ),
                        ),
                      ),
                    )
	                ],
	              ),
              ),

Container(
child: Stack(
	                children: <Widget>[

  Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 00),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color:hexStringToColor("9982C2"),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu',
                            ),
                          ),
                        ),
                      ),
                    )
	                ],
	              ),
),
              Padding( 
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, 0.2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey[100]!,
                                ),
                              ),
                            ),
                            child: TextField(
                                  style: TextStyle(fontFamily: 'Ubuntu'), // Apply Ubuntu font family

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[550]),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                  style: TextStyle(fontFamily: 'Ubuntu'), // Apply Ubuntu font family

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[550]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            hexStringToColor("9982C2"),
                            hexStringToColor("9982C2"),
                          ],
                        ),
                      ),

                      
                      //BUTTON
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your login button onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15),
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
                    SizedBox(height: 70),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromRGBO(143, 148, 251, 1),
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



  /*
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
}*/