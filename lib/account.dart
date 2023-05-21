import 'package:flutter/material.dart';
import 'package:flutter_codes/welcome_screen.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.green,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_2_rounded,
              ))),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()));
              },
              child: const Text('Click Me'))),
    );
  }
}
