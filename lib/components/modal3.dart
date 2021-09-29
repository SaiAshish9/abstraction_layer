import 'package:flutter/material.dart';
import 'header.dart';
import 'modal_button.dart';

class Modal3 extends StatelessWidget {
  const Modal3({Key? key, this.text = 'where we should we send the money?'})
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
                        "amount will be credited to this bank account, EMI will also be debited from this bank account",
                  ),
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
                  const ModalButton(text: "Change account")
                ],
              )),
        ],
      ),
    );
  }
}
