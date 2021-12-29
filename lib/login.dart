import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turning/signin.dart';
import 'mypage.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: TextButton(
            child: Text('signin'),
            onPressed: (){
              Get.to(() => signin());
            },
          )
        ),
    );
  }
}
