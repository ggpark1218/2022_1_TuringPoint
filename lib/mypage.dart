import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'MyPage/announcement.dart';
import 'MyPage/care.dart';
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
      appBar: AppBar(),
      body: Container(
        child: Expanded(
          child: Column(
            children: [
              Card(
                child: InkWell(
                  onTap: () {
                    Get.to(Announcement());
                  },
                  child: Text('자주 묻는 질문')
                ),
              ),
              Card(
                child: InkWell(
                    onTap: () {
                      Get.to(Care());
                    },
                    child: Text('고객센터')
                ),
              ),
              Card(
                child: InkWell(
                    onTap: () {
                      Get.to(CustomerService());
                    },
                    child: Text('공지사항')
                ),
              ),
              Card(
                child: InkWell(
                    onTap: () {
                      Get.to(Setting());
                    },
                    child: Text('앱 설정')
                ),
              ),
              Card(
                child: InkWell(
                    onTap: () {
                      Get.offAll(() => login());
                    },
                    child: Text('로그아웃')
                ),
              ),
              ]
            ),
        ),
      ),
    );
  }
}
