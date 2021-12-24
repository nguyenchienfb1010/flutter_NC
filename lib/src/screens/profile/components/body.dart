import 'package:fl_uberapp/src/Page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:fl_uberapp/src/screens/complete_profile/complete_profile_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Thông tin cá nhân",
            icon: "assets/icons/User Icon.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Thông báo",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Cài đặt",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Trung tâm trợ giúp",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Đăng xuất",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => LoginPage()));
            }
          ),
        ],
      ),
    );
  }
}
