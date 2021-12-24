import 'package:fl_uberapp/src/Page/login_page.dart';
import 'package:fl_uberapp/src/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_uberapp/routes.dart';
import 'package:fl_uberapp/theme.dart';
import 'package:fl_uberapp/src/screens/profile/profile_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

