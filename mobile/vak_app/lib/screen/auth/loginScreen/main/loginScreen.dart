import 'package:flutter/material.dart';
import 'package:vak_app/screen/auth/loginScreen/widget/loginFormWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/component/LoFi-Onboarding Image.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomSheet: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: LoginFormWidget(),
        ),
      ), 
    );
  }
}