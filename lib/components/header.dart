import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.text, required this.subTitle})
      : super(key: key);

  final String text;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Color(0xFF738594)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(subTitle,
            style: const TextStyle(color: Color(0xFF3f4759), fontSize: 12)),
        const SizedBox(height: 27),
      ],
    );
  }
}
