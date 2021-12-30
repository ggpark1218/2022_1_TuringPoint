import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:turning/signin.dart';
import 'home.dart';
import 'main.dart';
import 'mypage.dart';
//import 'package:turning.dart';

class login extends StatefulWidget {
  final List<CameraDescription> cameras;

  login(this.cameras);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
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
          const TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 14.0),
          Text("Password*"),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
            ),
            obscureText: true,
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
