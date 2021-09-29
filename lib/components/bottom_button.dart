// ignore: must_be_immutable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  BottomButton(
      {Key? key,
      required this.size,
      required this.current,
      required this.onPress})
      : super(key: key);

  final Size size;
  final Function onPress;

  final int current;

  List data = [
    'Procees to EMI selection',
    'Select your bank account',
    'Tap for 1-click KYC'
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: GestureDetector(
        onTap: () {
          if (current < 2) onPress(1);
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(0),
          height: size.height * 0.08,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Color(0xFF3a479b),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                  topRight: Radius.circular(18.0))),
          child: Align(
            child: Text(data[current],
                style: const TextStyle(
                    color: Color(0xFFb0a4bd), fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
