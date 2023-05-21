import 'package:flutter/material.dart';
import 'package:flutter_codes/foundation.dart';
import 'package:flutter_codes/utils/auth_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_provider.dart';

class LCD extends StateNotifier<Foundation> {
  LCD(this.ref) : super(Foundation());

  final Ref ref;

  final email = TextEditingController();
  final password = TextEditingController();

  void signin(String email, String password) async {
    String? error = await ref.read(authRepoProvider).login(email, password);
    if (error != null) {
      SnackBar(content: Text(error));
    }
    // state = Foundation();
    // try {
    //   await ref.read(authProvider).signUp(email, password);
    //   state = Foundation();
    // } catch (e) {
    //   state = Foundation();
    // }
  }
}

final lcdProvider = StateNotifierProvider<LCD, Foundation>((ref) => LCD(ref));
