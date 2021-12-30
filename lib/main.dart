import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:camera/camera.dart';

import 'app.dart';
import 'home.dart';

List<CameraDescription> cameras = [];

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }

  runApp(
    // MultiProvider(
    //   providers: [
    //   ],
     // child:
      CatchApp(cameras),
    // ),
  );
}