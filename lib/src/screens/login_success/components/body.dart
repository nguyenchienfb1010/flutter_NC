import 'package:flutter/material.dart';
import 'package:fl_uberapp/src/components/default_button.dart';
import 'package:fl_uberapp/src/screens/home/home_screen.dart';
import 'package:fl_uberapp/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.5, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Đăng nhập thành công!",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Trang chủ",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
