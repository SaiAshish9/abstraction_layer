import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Modal(
      {required this.size,
      required this.height,
      required this.text,
      required this.child,
      this.opacity = 1,
      this.showArrow = false,
      this.color = const Color(0xFF171922)})
      : super();

  final Size size;
  final double height;
  final Color color;
  final double opacity;
  final String text;
  final bool showArrow;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
      child: Opacity(
        opacity: opacity,
        child: Container(
            padding: EdgeInsets.symmetric(
                vertical: 18, horizontal: size.width * 0.0),
            child: child,
            height: height,
            width: double.infinity,
            color: color),
      ),
    );
  }
}
