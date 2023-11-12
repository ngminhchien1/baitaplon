import 'package:btl/views/component/button_signup.dart';
import 'package:btl/views/component/text_field.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Đăng kí",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Tên đăng nhập"),
                  ],
                ),
              ),
              MyTextField(
                  controller: usernameController,
                  hintText: "Tên đăng nhập",
                  obscureText: false),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Mat khau"),
                  ),
                ],
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: "Nhap mau khau",
                  obscureText: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Email"),
                  ),
                ],
              ),
              MyTextField(
                  controller: emailController,
                  hintText: "Nhap Email",
                  obscureText: false),
              SizedBox(
                height: 20,
              ),
              MyButton(onTap: () {})
            ],
          ),
        ),
      )),
    );
  }
}
