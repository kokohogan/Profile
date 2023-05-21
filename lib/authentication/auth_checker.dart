import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_codes/beta/login_page.dart';
import 'package:flutter_codes/home_home.dart';
import 'package:flutter_codes/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthChecker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authState = ref.watch(authStateProvider);

    return _authState.when(
        data: (user) {
          if (user != null) return const HomeHome();
          return const LoginScreen();
        },
        error: (e, trace) => Scaffold(body: Text(e.toString())),
        loading: () => const CircularProgressIndicator());
  }
}
