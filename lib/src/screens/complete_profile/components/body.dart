import 'package:flutter/material.dart';
import 'package:fl_uberapp/constants.dart';
import 'package:fl_uberapp/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Hoàn tất thông tin", style: headingStyle),
                Text(
                  "Nhập đầy đủ thông tin của bạn \nvào các ô yêu cầu",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
