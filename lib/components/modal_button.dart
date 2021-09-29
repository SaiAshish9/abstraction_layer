import 'package:flutter/material.dart';

class ModalButton extends StatelessWidget {
  const ModalButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFF738594)),
          borderRadius: BorderRadius.circular(18)),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11,
            color: Color(0xFF738594)),
      ),
    );
  }
}
