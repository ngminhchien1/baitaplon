import 'package:btl/views/component/button_signup.dart';
import 'package:btl/views/component/text_field.dart';
import 'package:btl/views/login_page.dart';
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
    final TextEditingController confirmPasswordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.green,
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
                padding: const EdgeInsets.all(25.0),
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
                    padding: const EdgeInsets.all(25.0),
                    child: Text("Mật Khẩu"),
                  ),
                ],
              ),
              MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Nhập mật khẩu",
                  obscureText: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.all(25.0),
                  child: Text("Nhập lại mật khẩu"),
                  ),
                ],
              ),
              MyTextField(
                  controller: passwordController, 
                  hintText: "Nhập mật khẩu", 
                  obscureText: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text("Email"),
                  ),
                ],
              ),
              MyTextField(
                  controller: emailController,
                  hintText: "Nhập email",
                  obscureText: false),
              SizedBox(
                height: 20,
              ),
              MyButton(onTap: () {}),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Đã có tài khoản ?",
                  style: Theme.of(context).textTheme.bodyMedium),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(" Đăng nhập ngay !", 
                    style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white,),
                  )),
                ],
                
              )
            ],
          ),
        ),
      )),
    );
  }
}
