
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_uberapp/src/Page/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<User?> registerAccout(String name, String email, String password,) async{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User? user = (await _auth.createUserWithEmailAndPassword(email: email, password: password)).user;
    if(user != null){
      print("Account created Scuccesfull!");
      return user;
    }else {
      print("Acoout created Failed!");
      return user;
    }
  } catch(e){
    print(e);
    return null;
  }
}
Future<User?> login(String email, String password) async{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User? user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
    if(user != null){
      print("Login Scuccesfull!");
      return user;
    }else {
      print("Login Failed!");
      return user;
    }
  } catch(e){
    print(e);
    return null;
  }
}
Future Logout(BuildContext context) async{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    await _auth.signOut().then((value) => {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()))
    });
  }catch(e){
    print("error");
  }
}