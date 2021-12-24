import 'package:fl_uberapp/constants.dart';
import 'package:fl_uberapp/src/Page/login_page.dart';
import 'package:fl_uberapp/src/Page/methods.dart';
import 'package:fl_uberapp/src/screens/login_success/login_success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fl_uberapp/size_config.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _name = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  bool isLoading = false;
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
              Image.asset('splash_2.png',
                height: getProportionateScreenHeight(140),
                width: getProportionateScreenWidth(140),),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 6),
                child: Text(
                  "Xin chào bạn",
                  style: TextStyle(color: Color(0xff3333333), fontSize: 22),
                ),
              ),
              Text(
                "Đăng ký với các bước đơn giản",
                style: TextStyle(color: Color(0xff606470), fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                    controller: _name,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                        labelText: "Tên",
                        prefixIcon: Container(
                            width: 50, child: Image.asset("ic_user.png")),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffCED0D2), width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(6)))),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  controller: _email,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset("ic_mail.png"),
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ),
                  ),
                ),
               TextField(
                 controller: _password,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                      labelText: "Mật khẩu",
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset("ic_lock.png"),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      )),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {
                      if (_name.text.isNotEmpty&&
                          _email.text.isNotEmpty&&
                          _password.text.isNotEmpty){
                        setState(() {
                          isLoading = true;

                        });
                        registerAccout(_name.text, _email.text, _password.text,).then((user) {
                          if (user != null) {
                            setState(() {
                              isLoading = false;
                            });
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => LoginSuccessScreen()));
                            print("Account Created Successfull");
                          } else {
                            print("Login Faile!");
                            setState(() {
                              isLoading = false;
                            });
                          }
                        });
                        }else{
                        print("Please enter Fields");
                      }
                    },
                    child: Text(
                      "Đăng ký",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Đã có tài khoản? ",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
