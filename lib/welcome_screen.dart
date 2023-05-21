import 'package:flutter/material.dart';
import 'package:flutter_codes/beta/login_page.dart';
import 'package:flutter_codes/beta/signup_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double hit = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                const SafeArea(
                  child: Image(
                    image: AssetImage('assets/images/robohum.png'),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Welcome to Our App!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                const Text(
                  'We Send Stuff to Places and Stuff',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()));
                        },
                        child: Text('Sign Up'.toUpperCase())),
                    const SizedBox(
                      width: 40.0,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: Text('Login'.toUpperCase()),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
