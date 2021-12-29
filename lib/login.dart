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
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          const SizedBox(height: 60.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/google_logo.png'),
              const SizedBox(height: 20.0),
              const Text('Log in',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 35.0),
          Text("Email*"),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'Username',
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
              Text("Forgot Password?"),
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
              Text("Remember me"),
            ],
          ),
          ElevatedButton(
            onPressed: () {  },
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
