import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turning/signin.dart';

import 'MyPage/announcement.dart';
import 'MyPage/care.dart';
import 'MyPage/customer_service.dart';
import 'MyPage/FAQ.dart';
import 'MyPage/parking.dart';
import 'MyPage/profile.dart';
import 'MyPage/setting.dart';

import 'display.dart';
import 'home.dart';
import 'login.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';

import 'mypage.dart';

class CatchApp extends StatelessWidget {
  final List<CameraDescription> cameras;

  CatchApp(this.cameras);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(828, 1792),
      builder: () {
        return GetMaterialApp(
            title: 'Shrine',
            home: home(cameras),
            initialRoute: '/login',
            routes: {
              '/login': (context) => login(cameras),
            }

          //   '/signin' : (context) => const signin(),
          //   '/display' : (context) => const display(),
          //   '/announcement' : (context) => const Announcement(),
          //   '/care' : (context) => const Care(),
          //   '/customer_service' : (context) => const CustomerService(),
          //   '/FAQ' : (context) => const FAQ(),
          //   '/parking' : (context) => const Parking(),
          //   '/profile' : (context) => const Profile(),
          //   '/setting' : (context) => const Setting(),
          // }
        );
    },
    );
  }
}



