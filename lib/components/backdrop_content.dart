import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackdropContent extends StatelessWidget {
  const BackdropContent(
      {Key? key, this.show = true, required this.title, required this.subTitle})
      : super(key: key);

  final String title;
  final String subTitle;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF738594)),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF738594)),
                  ),
                ],
              ),
              Container(
                child: show
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "duration",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xFF738594)),
                          ),
                          Text(
                            "12 months",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF738594)),
                          ),
                        ],
                      )
                    : null,
              ),
              SvgPicture.asset('assets/images/arrow-ios-downward.svg',
                  width: 18),
            ],
          )
        ],
      ),
    );
  }
}
