import 'package:flutter/material.dart';
//eunnjin
class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  final _usernameController = TextEditingController();
  final _carnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatpasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar:AppBar(
      //   title: Text('회원가입'),
      //   centerTitle: true,
      // ) ,
      body:Form(
        key:_formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const SizedBox(height: 30.0),
            Text('Sign up'),
            const SizedBox(height: 30.0),
            Text('Name'),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Username';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            Text('Car name'),
            TextFormField(
              controller: _carnameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: '2022 Hyundai SantaFe',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Car name';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            Text('Email'),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'example@mail.com',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            Text('Password'),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'at last 9 characters',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                return null;
              },

              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            Text('Reapeat Password'),
            TextFormField(
              controller: _repeatpasswordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: '',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                return null;
              },
              obscureText: true,
            ),
            ElevatedButton(
              child: const Text('Sign up'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                  Navigator.pop(context);
                }


              },
            ),
            Text('Already have an account?'),
            TextButton(onPressed: (){

            },
                child: Text('Log in'))

          ],
        ),

      ),
    );
  }
}
