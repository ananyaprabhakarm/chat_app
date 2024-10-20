import 'package:chat_app_flutter/auth/login_or_register.dart';
import 'package:chat_app_flutter/pages/register_page.dart';
import 'package:chat_app_flutter/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_flutter/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
    );
  }
}
