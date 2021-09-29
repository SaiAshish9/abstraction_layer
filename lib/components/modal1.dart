import 'package:flutter/material.dart';
import 'header.dart';

class Modal1 extends StatelessWidget {
  const Modal1({Key? key, this.text = 'sai, how much do you need?'})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              padding: const EdgeInsets.only(right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(
                    text: text,
                    subTitle:
                        "move the dial and set any amount you need upto ₹487,891",
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
