import 'package:flutter/material.dart';

class PumpupNavigationBar extends StatefulWidget {
  const PumpupNavigationBar({super.key});

  @override
  State<PumpupNavigationBar> createState() => _PumpupNavigationBarState();
}

class _PumpupNavigationBarState extends State<PumpupNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.black,
      destinations: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
          icon: Icon(Icons.home, color: Colors.white),
        ),

        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/workouts');
          },
          icon: Icon(Icons.event_note, color: Colors.white),
        ),

        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/exercises');
          },
          icon: Icon(Icons.fitness_center, color: Colors.white),
        ),

        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/profile');
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ],
    );
  }
}
