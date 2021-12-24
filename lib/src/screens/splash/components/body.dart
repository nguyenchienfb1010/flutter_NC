import 'package:fl_uberapp/src/Page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:fl_uberapp/constants.dart';
import 'package:fl_uberapp/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Ứng dụng đi chợ tại nhà",
      "image": "assets/images/main1.jpg"
    },
    {
      "text": "Giao hàng nhanh chóng \nCó hàng ngay chỉ sau 1 giò đồng hồ",
      "image": "assets/images/main2.jpg"
    },
    {
      "text": "An toàn khi giao \nĐảm bảo guyên tắc 5k",
      "image": "assets/images/main3.jpg"
    },
    {
      "text": "Tiện lợi khi sử dụng \nChỉ với vài thao tác đơn giản",
      "image": "assets/images/main4.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 1),
                    DefaultButton(
                      text: "Tiếp tục",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 7,
      width: currentPage == index ? 25 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
