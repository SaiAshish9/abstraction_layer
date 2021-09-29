import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final Widget child;

  const NavIcon({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(3.6),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xFF1e2025)),
        child: child);
  }
}
