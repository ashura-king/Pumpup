import 'package:flutter/material.dart';

class PumpupAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PumpupAppbar({
    super.key,
    required this.icon,
    required this.title,
    required this.editFunction,
    this.disableEdit = false,
  });

  final bool disableEdit;
  final IconData icon;
  final String title;
  final VoidCallback editFunction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Icon(icon, color: Colors.black, size: 24),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        if (!disableEdit)
          TextButton(
            onPressed: disableEdit ? null : editFunction,
            child: Text(
              'Edit',
              style: TextStyle(
                color: const Color(0xFF0A3BBE),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
