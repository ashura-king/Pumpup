import 'package:flutter/material.dart';
import 'package:pump/pages/dashboard.dart';
import 'package:pump/pages/exercises.dart';
import 'package:pump/pages/forgot.dart';
import 'package:pump/pages/profile.dart';
import 'package:pump/pages/signup.dart';
import 'package:pump/pages/workouts.dart';
import 'package:pump/widgets/auth_layout.dart';
import 'pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'configs/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => AuthLayout(child: const DashboardScreen()),
        '/workouts': (context) => AuthLayout(child: const WorkoutScreen()),
        '/exercises': (context) => AuthLayout(child: const ExercisesScreen()),
        '/profile': (context) => AuthLayout(child: const ProfileScreen()),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
      },
    );
  }
}
