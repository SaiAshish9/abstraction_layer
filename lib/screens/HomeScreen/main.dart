import 'package:cred/components/backdrop_content.dart';
import 'package:cred/components/bottom_button.dart';
import 'package:cred/components/modal.dart';
import 'package:cred/components/modal1.dart';
import 'package:cred/components/modal2.dart';
import 'package:cred/components/modal3.dart';
import 'package:cred/components/nav_item.dart';
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
      if (x < 2) current += x;
    });
  }

  void setCurrent(int x) {
    setState(() {
      if (x < 2) current = x;
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
                    opacity: current > 0 ? 0.2 : 1,
                    showArrow: current > 0,
                    child: current > 0
                        ? const BackdropContent(
                            title: "credit amount",
                            subTitle: "₹1,50,000",
                            show: false,
                          )
                        : const Modal1(),
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
                          opacity: current > 1 ? 0.4 : 1,
                          showArrow: true,
                          child: current == 2
                              ? const BackdropContent(
                                  title: "EMI", subTitle: "₹4,247 /mo")
                              : const Modal2(),
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
