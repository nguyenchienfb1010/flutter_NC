import 'package:fl_uberapp/src/screens/payment.dart';
import 'package:fl_uberapp/src/screens/payment_success/payment_success_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_uberapp/src/screens/cart/cart_screen.dart';
import 'package:fl_uberapp/src/screens/complete_profile/complete_profile_screen.dart';
import 'package:fl_uberapp/src/screens/details/details_screen.dart';
import 'package:fl_uberapp/src/screens/home/home_screen.dart';
import 'package:fl_uberapp/src/screens/login_success/login_success_screen.dart';
import 'package:fl_uberapp/src/screens/profile/profile_screen.dart';
import 'package:fl_uberapp/src/screens/splash/splash_screen.dart';



// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  PayMentSuccessScreen.routeName: (context) => PayMentSuccessScreen(),
};
