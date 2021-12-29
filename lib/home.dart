import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'mypage.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        child: Text('mypage'),
        onPressed: (){
          Get.to(() => mypage());
        },
      )
    );
  }
}
