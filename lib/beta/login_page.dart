import 'package:flutter/material.dart';

import '../utils/forms.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage("assets/images/login.png"),
                height: rize.height *
                    0.20, //for image size variation in multiple devices
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text('Welcome Back',
                  style: Theme.of(context).textTheme.titleLarge),
              Text('Input Details:',
                  style: Theme.of(context).textTheme.bodySmall),
              //form starts here, it's a hot day btw
              const FormWidget()
            ],
          ),
        )),
      )),
    );
  }
}
