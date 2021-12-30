import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:turning/signin.dart';
import 'package:turning/theme/app_colors.dart';
import 'home.dart';
import 'main.dart';
import 'mypage.dart';
//import 'package:turning.dart';
import 'package:turning/theme/app_theme.dart';
import 'package:turning/theme/app_text_styles.dart';

class login extends StatefulWidget {
  final List<CameraDescription> cameras;

  login(this.cameras);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController (text: '');
  TextEditingController passwordController = TextEditingController (text: '');

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          const SizedBox(height: 50.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/google_logo.png'),
              const SizedBox(height: 20.0),
              Text('Log in',
                style: textTheme.headline1,
              ),
            ],
          ),
          const SizedBox(height: 35.0),
          Text("Email*"),
          Stack(
            children: [
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  //filled: true,
                  //labelText: 'Email',
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.primary!)),
                  hintText: '이메일을 입력해주세요!',
                ),
              ),
            ]
          ),
          const SizedBox(height: 14.0),
          Text("Password*"),
          Stack(
              children: [
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 14,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primary!)),
                    hintText: '비밀번호 입력해주세요!',
                  ),
                ),
              ]
          ),
          const SizedBox(height: 5.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(onPressed: () {  },
                  child:const Text("Forgot Password?",
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                style: TextButton.styleFrom(padding: EdgeInsets.zero,),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  }
              ),
              Text("Remember me",
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => home(cameras));
            },
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey),),
            child: const Text("Log in",
            style: TextStyle(
              color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20.0),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {
                  Get.to(() => signin());
                },
                child: const Text(
                    "Sign Up",
                style: TextStyle(
                  color: Colors.blueGrey,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
