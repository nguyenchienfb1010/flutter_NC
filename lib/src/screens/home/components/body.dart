import 'package:flutter/material.dart';
import 'package:fl_uberapp/src/screens/home/components/categories_2.dart';

import 'package:fl_uberapp/size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            // SizedBox(height: getProportionateScreenWidth(0)),
            DiscountBanner(),
            Categories(),
            Categories_2(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(25)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
