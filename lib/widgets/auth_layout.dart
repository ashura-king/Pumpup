import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final isLoggedIn = snapshot.hasData;

        if (!isLoggedIn) {
          // Only navigate if we're not already on the login route
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (ModalRoute.of(context)?.settings.name != '/login') {
              Navigator.of(context).pushReplacementNamed('/login');
            }
          });

          return const SizedBox.shrink();
        }

        return child;
      },
    );
  }
}
