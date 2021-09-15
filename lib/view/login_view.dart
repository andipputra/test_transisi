import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transisi_test/controller/login_controller.dart';

class LoginViews extends StatefulWidget {
  @override
  _LoginViewsState createState() => _LoginViewsState();
}

class _LoginViewsState extends State<LoginViews> {
  LoginController loginC = Get.put(LoginController());

  TextEditingController emailTextC = TextEditingController();
  TextEditingController pwTextC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TextFormField(
                  controller: emailTextC,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: pwTextC,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                )
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
