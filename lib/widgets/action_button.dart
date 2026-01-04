import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isOutline = false,
  });

  final String label;
  final IconData icon;
  final void Function() onPressed;
  final bool isOutline;

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FloatingActionButton.extended(
        onPressed: widget.onPressed,
        icon: Icon(widget.icon),
        label: Text(widget.label),
        backgroundColor: widget.isOutline
            ? Colors.transparent
            : const Color(0xFF0A3BBE),
        foregroundColor: widget.isOutline
            ? const Color(0xFF0A3BBE)
            : Colors.white,
        elevation: widget.isOutline ? 0 : 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: widget.isOutline
              ? const BorderSide(color: Color(0xFF0A3BBE), width: 2)
              : BorderSide.none,
        ),
      ),
    );
  }
}
