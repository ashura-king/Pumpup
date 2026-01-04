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
          onPressed: () {},
          icon: Icon(Icons.home, color: Colors.white),
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(Icons.event_note, color: Colors.white),
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(Icons.fitness_center, color: Colors.white),
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ],
    );
  }
}
