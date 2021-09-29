import 'package:cred/constants/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollCard extends StatelessWidget {
  const ScrollCard(
      {Key? key,
      required this.size,
      required this.price,
      this.show = false,
      this.banner = false,
      required this.color,
      required this.duration})
      : super(key: key);

  final Size size;
  final String price;
  final int duration;
  final bool show;
  final Color color;
  final bool banner;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            padding: const EdgeInsets.only(top: 9),
            child: Container(
              height: size.width * 0.36,
              width: size.width * 0.36,
              margin: const EdgeInsets.only(right: 12),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.width * 0.03),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: color),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 7),
                  Container(
                      padding: const EdgeInsets.all(4.5),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !show ? Colors.white38 : color,
                              width: show ? 0.5 : 0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          color: show
                              ? const Color(0xFF684949)
                              : Colors.transparent),
                      child: show
                          ? const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15,
                            )
                          : null),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(price,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                          const Text(" /mo",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text("for $duration months",
                      style: const TextStyle(
                          fontSize: 11,
                          color: Colors.white54,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 12),
                  const Text("See calculations",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.white30,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: size.width * 0.045,
            child: Container(
              child: banner
                  ? Container(
                      height: 18,
                      width: size.width * 0.27,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                spreadRadius: 0.72,
                                color: Color(0xFF999999))
                          ],
                          borderRadius:
                              BorderRadius.all(Radius.circular((10)))),
                      child: const Center(
                        child: Text('recommended',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF9e9da2))),
                      ),
                    )
                  : null,
            )),
      ],
    );
  }
}
