import 'package:flutter/material.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: BoxBorder.all(color: Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        spacing: 4,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Workout Tile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300]!,
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 14),
            child: Text(
              'Duration : 2 - 3 hours',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),

          SizedBox(height: 1),
        ],
      ),
    );
  }
}
