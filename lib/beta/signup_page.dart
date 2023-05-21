import 'package:flutter/material.dart';

import '../utils/forms.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage('assets/images/signup.png'),
                height: pize.height * 0.13,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text('Get Onboard!',
                  style: Theme.of(context).textTheme.titleLarge),
              const Expanded(child: SignupForm())
            ],
          ),
        ),
      )),
    );
  }
}
