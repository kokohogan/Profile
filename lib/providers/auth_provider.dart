import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_codes/utils/auth_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Provider for firebase instance
final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => (FirebaseAuth.instance));

//Provider for reading and reacting to the Firebase Functions
final authRepoProvider =
    Provider<AuthRepo>((ref) => AuthRepo(ref.read(firebaseAuthProvider)));

//Stream Provider for auth function changes
final authStateProvider =
    StreamProvider<User?>((ref) => ref.watch(authRepoProvider).authStateChange);
