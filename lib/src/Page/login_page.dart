import 'package:fl_uberapp/constants.dart';
import 'package:fl_uberapp/size_config.dart';
import 'package:fl_uberapp/src/Page/methods.dart';
import 'package:fl_uberapp/src/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:fl_uberapp/src/Page/register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = new TextEditingController();
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
                height: getProportionateScreenHeight(180),
                width: getProportionateScreenWidth(180),),
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
                child: Text(
                  'Xin chào',
                  style: TextStyle(fontSize: 22, color: Color(0xff3333333)),
                ),
              ),
              Text(
                'Đăng nhập để tiếp tục sử dụng',
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: TextField(
                  controller: _email,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Container(
                          width: 50, child: Image.asset("ic_mail.png")
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
                controller: _password,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Mật khẩu",
                    prefixIcon: Container(
                        width: 50, child: Image.asset("ic_lock.png")
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCEd0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                ),
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "Quên mật khẩu",
                    style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,20, 0, 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      if (_email.text.isNotEmpty&&
                          _password.text.isNotEmpty){
                        setState(() {
                          isLoading = true;

                        });
                        login(_email.text, _password.text,).then((user) {
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
                      "Đăng nhập",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: "Người dùng mới? ",
                      style: TextStyle(color: Color(0xff606704), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap =() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context)=> RegisterPage()));
                              },
                            text: "Đăng ký tài khoản mới",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,

                            )
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

