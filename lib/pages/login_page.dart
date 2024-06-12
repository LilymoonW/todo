import 'package:flutter/material.dart';
import 'package:todo/utilities/my_button.dart';
import 'package:todo/utilities/my_textfield.dart';
import 'package:todo/utilities/square_tile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  //sign user in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 48, 81, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            
            Icon(Icons.lock, size: 130, color: Colors.white),

            SizedBox(height: 25),

            // welcome text
            Text(
              "Log in to your account",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),

            //gap
            SizedBox(
              height: 25,
            ),

            //input userLoginPage
            MyTextField(
              hintText: 'Username',
              controller: _usernameController,
              obscureText: false,
            ),

            //gap
            SizedBox(
              height: 20,
            ),

            // input password
            MyTextField(
              hintText: 'Password',
              controller: _passwordController,
              obscureText: true,
            ),

            //gap
            SizedBox(
              height: 15,
            ),

            //forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),

            //gap
            const SizedBox(height: 25),

            // button Sign in
            SizedBox(
              width: 500,
              height: 60,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MyButton(
                      name: 'Sign In',
                      color: Color.fromARGB(255, 210, 202, 62),
                      onPressed: signUserIn),
                ),
              ),
            ),

            //gap
            const SizedBox(height: 25),

            //Divider and text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or continue with",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            //gap
            const SizedBox(height: 25),

            //Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'lib/images/Google.png'),
                SizedBox(width: 20),
                SquareTile(imagePath: 'lib/images/apple.png'),
              ],
            ),

            //gap
            const SizedBox(height: 20),
            //Text
            Text(
              "Don't Have an account? Register Now",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
