import 'package:cred/constants/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;

  void updateCurrent(int x) {
    setState(() {
      current += x;
    });
  }

  void setCurrent(int x) {
    setState(() {
      current = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(kPrimaryColor), // navigation bar color
      statusBarColor: Color(kPrimaryColor), // status bar coloron
    ));

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(kPrimaryColor),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: size.height * 0.027,
            left: size.width * 0.05,
            child: const NavIcon(
                child: Icon(Icons.close, color: Color(0xFF919499), size: 12)),
          ),
          Positioned(
            top: size.height * 0.027,
            right: size.width * 0.05,
            child: NavIcon(
                child:
                    SvgPicture.asset('assets/images/question.svg', width: 12)),
          ),
          Positioned(
              top: size.height * 0.12,
              right: 0,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  if (current > 0) setCurrent(0);
                },
                child: Modal(
                    size: size,
                    height: size.height * 0.8,
                    opacity: 0.3,
                    showArrow: current > 0,
                    child: const SizedBox(
                      child: null,
                    ),
                    text: 'credit amount'),
              )),
          Container(
            child: current > 0
                ? Positioned(
                    top: size.height * 0.24,
                    right: 0,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        if (current > 1) setCurrent(1);
                      },
                      child: Modal(
                          size: size,
                          height: size.height * 0.8,
                          opacity: 0.6,
                          showArrow: true,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "EMI",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xFF738594)),
                                  ),
                                  SvgPicture.asset(
                                      'assets/images/arrow-ios-downward.svg',
                                      width: 18),
                                ],
                              )
                            ],
                          ),
                          text: 'EMI'),
                    ))
                : null,
          ),
          Container(
            child: current > 1
                ? Positioned(
                    top: size.height * 0.36,
                    right: 0,
                    left: 0,
                    child: Modal(
                        size: size,
                        height: size.height * 0.8,
                        child: const Modal3(),
                        text: 'where should we send the money?'))
                : null,
          ),
          BottomButton(
            size: size,
            onPress: updateCurrent,
            current: current,
          )
        ],
      )),
    );
  }
}

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
                vertical: 18, horizontal: size.width * 0.05),
            child: child,
            height: height,
            width: double.infinity,
            color: color),
      ),
    );
  }
}

class Modal3 extends StatelessWidget {
  const Modal3({Key? key, this.text = 'where we should we send the money?'})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 7),
            padding: const EdgeInsets.only(right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xFF738594)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "amount will be credited to this bank account, EMI will also be debited from this bank account",
                    style: TextStyle(color: Color(0xFF3f4759), fontSize: 12)),
                const SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9.0)),
                          child: Image.asset('assets/images/hdfc.png',
                              fit: BoxFit.cover),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('HDFC Bank',
                                style: TextStyle(
                                    color: Color(0xFFbec1cf),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            SizedBox(height: 4),
                            Text('50100117009192',
                                style: TextStyle(
                                    color: Color(0xFF505362),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12))
                          ],
                        ),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF3d404f)),
                        child: const Icon(Icons.check,
                            size: 16, color: Color(0xFFb6a1ac)))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFF738594)),
                      borderRadius: BorderRadius.circular(18)),
                  child: const Text(
                    "Change account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Color(0xFF738594)),
                  ),
                )
              ],
            )),
      ],
    );
  }
}

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
          onPress(1);
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
