import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_codes/authentication/auth_checker.dart';
import 'package:flutter_codes/home_home.dart';
import 'package:flutter_codes/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firebase_options.dart';
import 'foundation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp _fbApp = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Basics',
      theme: Gtheme.lightTheme,
      darkTheme: Gtheme.darkTheme,
      themeMode: ThemeMode.light,
      home: Foundation(),
    );
  }
}
