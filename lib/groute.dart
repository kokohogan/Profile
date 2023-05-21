import 'package:flutter/material.dart';
import 'package:flutter_codes/authentication/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:flutter_codes/beta/login_page.dart';
import 'package:flutter_codes/beta/recieve.dart';
import 'package:flutter_codes/beta/signup_page.dart';
import 'package:flutter_codes/home_home.dart';
import 'package:go_router/go_router.dart';

class Groute extends StatelessWidget {
  const Groute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}

final GoRouter _router = GoRouter(routes: <GoRoute>[
  GoRoute(
    routes: <GoRoute>[
      GoRoute(
        path: 'LoginPage',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: 'OTP Screen',
        builder: (context, state) => OtpScreen(),
      ),
      GoRoute(
        path: 'HomePage',
        builder: (context, state) => const HomeHome(),
      ),
      GoRoute(
        path: 'SignupPage',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: 'RecievingPage',
        builder: (context, state) => const R(),
      )
    ],
    path: '/',
    builder: (context, state) => const HomeHome(),
  )
]);
