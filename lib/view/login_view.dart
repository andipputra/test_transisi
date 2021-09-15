import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transisi_test/controller/login_controller.dart';

class LoginViews extends StatefulWidget {
  const LoginViews({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                TextFormField(
                  controller: emailTextC,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: pwTextC,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                loginC.login(email: emailTextC.text, password: pwTextC.text);
              },
              child: const Text(' Elevated Button'),
            )
          ],
        ),
      ),
    );
  }
}
