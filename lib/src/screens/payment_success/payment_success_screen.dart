import 'package:flutter/material.dart';

import 'components/body.dart';

class PayMentSuccessScreen extends StatelessWidget {
  static String routeName = "/payment_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Đặt hàng thành công",
          textAlign: TextAlign.center,),
      ),
      body: Body(),
    );
  }
}
