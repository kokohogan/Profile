import 'package:flutter/material.dart';
import 'package:flutter_codes/home.dart';

class R extends StatefulWidget {
  const R({super.key});

  @override
  State<R> createState() => _RState();
}

class _RState extends State<R> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
    );
  }
}
