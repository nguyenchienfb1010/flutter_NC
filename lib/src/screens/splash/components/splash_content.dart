import 'package:flutter/material.dart';

import 'package:fl_uberapp/constants.dart';
import 'package:fl_uberapp/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Siêu Thị Xanh",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 1),
        Image.asset(

          'splash_1.png',
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenWidth(280),
        ),
      ],
    );
  }
}
