import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:pump/pages/workout.dart';
>>>>>>> c93a453365e5bf4ad6b97b2e00c9022e3da11b0b
import 'package:pump/pages/forgot.dart';
import 'package:pump/pages/login.dart';
import 'package:pump/pages/signup.dart';
<<<<<<< HEAD
import 'package:pump/widgets/layout.dart';
=======
import 'package:pump/widgets/auth_layout.dart';
import 'pages/login.dart';
import 'pages/exercise.dart';
>>>>>>> c93a453365e5bf4ad6b97b2e00c9022e3da11b0b
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
      home: const Layout(),
      routes: {
<<<<<<< HEAD
=======
        '/': (context) => AuthLayout(child: const WorkoutsScreen()),
>>>>>>> c93a453365e5bf4ad6b97b2e00c9022e3da11b0b
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
        '/exercise': (context) => const ExerciseListScreen(),
      },
    );
  }
}
