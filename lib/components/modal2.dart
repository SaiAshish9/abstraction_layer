import 'package:cred/components/scroll_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'header.dart';
import 'modal_button.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class Modal2 extends StatelessWidget {
  const Modal2({Key? key, this.text = 'how do you widh to repay?'})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: size.width * 0.05, right: 18),
                  child: Header(
                    text: text,
                    subTitle:
                        "choose one of our recommended plans or make your own",
                  ),
                ),
                ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: size.width * 0.05),
                              child: ScrollCard(
                                  size: size,
                                  price: "₹4,247",
                                  duration: 12,
                                  show: true,
                                  color: const Color(0xFF43343d))),
                          ScrollCard(
                              size: size,
                              price: "₹5,580",
                              duration: 9,
                              banner: true,
                              color: const Color(0xFF7d7290)),
                          Container(
                              padding: const EdgeInsets.only(right: 18),
                              child: ScrollCard(
                                size: size,
                                price: "₹8,208",
                                duration: 6,
                                color: const Color(0xFF59698b),
                              )),
                        ],
                      )),
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: const ModalButton(text: "Create your own plan"))
              ],
            )),
      ],
    );
  }
}
