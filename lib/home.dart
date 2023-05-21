import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_codes/dashboard/dashboard.dart';
import 'package:flutter_codes/testing.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 300.0,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dashboard()));
            },
            icon: const Icon(Icons.arrow_forward),
            label: const Text(' Send a Package '),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(300.0, 55.0),
            ),
          ),
          const SizedBox(
            height: 35.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(
                onPressed: () => context.go('/RecievingPage'),
                icon: const Icon(Icons.arrow_back),
                label: const Text(' Recieve a Package '),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(300.0, 55.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
