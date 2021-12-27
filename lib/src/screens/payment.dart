import 'package:fl_uberapp/constants.dart';
import 'package:fl_uberapp/size_config.dart';
import 'package:fl_uberapp/src/components/default_button.dart';
import 'package:fl_uberapp/src/screens/login_success/login_success_screen.dart';
import 'package:fl_uberapp/src/screens/payment_success/payment_success_screen.dart';
import 'package:flutter/material.dart';

class PayMent extends StatefulWidget {

  PayMent({Key? key}) : super(key: key);

  @override
  _PayMentState createState() => _PayMentState();
}

class _PayMentState extends State<PayMent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff327708)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
                child: Text(
                  'Thông tin đặt hàng',
                  style: TextStyle(fontSize: 22, color: Color(0xff3333333)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Tên người nhận",
                      prefixIcon: Container(
                          width: 50,
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xffCEd0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Số điện thoại",
                    prefixIcon: Container(
                        width: 50,
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCEd0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                ),
              ),
              TextField(

                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Địa chỉ người nhận",
                    prefixIcon: Container(
                      width: 50,
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCEd0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Tổng tiền:\n",
                      children: [
                        TextSpan(
                          text: "955.0 VND",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(190),
                    child: DefaultButton(
                      text: "Đặt hàng",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => PayMentSuccessScreen()));

                      },
                    ),
                  ),
                ],
              ),

  ],
          ),
    ),
      ),
          );
  }
}

