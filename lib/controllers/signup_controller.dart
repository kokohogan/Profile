import 'package:flutter/material.dart';
import 'package:flutter_codes/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_provider.dart';

class SCD extends StateNotifier<Foundation> {
  SCD(this.ref) : super(Foundation());

  final Ref ref;

  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final phoneNo = TextEditingController();

  //final pood = Provider((ref) => ref.watch(crudRepo));

  void signup(String email, String password) async {
    String? error = await ref.read(authRepoProvider).signUp(email, password);
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

  Future<void> otp(String mobileNo) async {
    String? err = await ref.read(authRepoProvider).phoneAuth(mobileNo);
    if (err != null) {
      SnackBar(content: Text(err));
    }
  }
}

final scdProvider = StateNotifierProvider<SCD, Foundation>((ref) => SCD(ref));
