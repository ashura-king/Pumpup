import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

ValueNotifier<AuthService> authService = ValueNotifier<AuthService>(
  AuthService(),
);

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> resetPassword({required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> updateUsername({required String displayName}) async {
    if (currentUser != null) {
      await currentUser!.updateDisplayName(displayName);
      await currentUser!.reload();
    }
  }

  Future<void> deleteAccount({required String password}) async {
    if (currentUser != null) {
      final credential = EmailAuthProvider.credential(
        email: currentUser!.email!,
        password: password,
      );

      try {
        await currentUser!.reauthenticateWithCredential(credential);
        await currentUser!.delete();
        await signOut();
      } catch (e) {
        print('Error in deleteAccount: $e');
      }
    }
  }

  Future<void> updateEmail({required String newEmail}) async {
    if (currentUser != null) {
      await currentUser!.verifyBeforeUpdateEmail(newEmail);
    }
  }

  Future<void> updatePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    if (currentUser != null) {
      final credential = EmailAuthProvider.credential(
        email: currentUser!.email!,
        password: currentPassword,
      );

      try {
        await currentUser!.reauthenticateWithCredential(credential);
        await currentUser!.updatePassword(newPassword);
      } catch (e) {
        print('Error in updatePassword: $e');
      }
    }
  }
}
