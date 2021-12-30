import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'MyPage/announcement.dart';
import 'MyPAge/care.dart';
import 'MyPage/customer_service.dart';
import 'MyPage/FAQ.dart';
import 'MyPage/parking.dart';
import 'MyPage/profile.dart';
import 'MyPage/setting.dart';
import 'login.dart';

class mypage extends StatefulWidget {
  const mypage({Key? key}) : super(key: key);

  @override
  _mypageState createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: ClipOval(
                      child: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=640:*'),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('소망붕붕',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('그랜저 11바 1111')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.to(Profile());
                    },
                    icon: Icon(Icons.arrow_back_ios_outlined),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 10, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: ClipOval(
                          child: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=640:*'),
                        ),
                      ),
                      Text('차 상태관리'),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: ClipOval(
                          child: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=640:*'),
                        ),
                      ),
                      Text('주차정보'),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: ClipOval(
                          child: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=640:*'),
                        ),
                      ),
                      Text('로그 (보류)'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('자주 묻는 질문'),
            onTap: (){
              Get.to(Announcement());
            },
          ),
          Divider(),
          ListTile(
            title: Text('고객센터'),
            onTap: (){
              Get.to(CustomerService());
            },
          ),
          Divider(),
          ListTile(
            title: Text('공지사항'),
            onTap: (){
              Get.to(CustomerService());
            },
          ),
          Divider(),
          ListTile(
            title: Text('앱 설정'),
            onTap: (){
              Get.to(CustomerService());
            },
          ),
          Divider(),
          ListTile(
            title: Text('로그아웃'),
            onTap: (){
              Get.offAll(() => login());
            },
          ),
        ],
      ),
    );
  }
}
