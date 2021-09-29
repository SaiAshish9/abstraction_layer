import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'header.dart';

class Modal1 extends StatelessWidget {
  const Modal1({Key? key, this.text = 'sai, how much do you need?'})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(
                    text: text,
                    subTitle:
                        "move the dial and set any amount you need upto ₹487,891",
                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: size.height * 0.54,
                    width: size.width * 0.9,
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            height: size.height * 0.36,
                            child: Image.asset('assets/images/graph.png',
                                fit: BoxFit.cover)),
                        Column(
                          children: const [
                            Text(
                              'stash is instant. money will be credited within',
                              style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'seconds.',
                              style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
