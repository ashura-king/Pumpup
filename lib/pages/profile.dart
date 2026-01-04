import 'package:flutter/material.dart';
import 'package:pump/services/auth_service.dart';
import 'package:pump/widgets/action_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _signOut() async {
    await authService.value.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),

          Expanded(child: SizedBox()),

          ActionButton(
            isOutline: true,
            label: 'Sign out',
            icon: Icons.logout_rounded,
            onPressed: _signOut,
          ),
        ],
      ),
    );
  }
}
