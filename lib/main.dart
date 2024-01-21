import 'package:finalproject/page/loginpage.dart';
import 'package:finalproject/page/otpverificationpage.dart';
import 'package:finalproject/page/registerpage.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(MaterialApp(
      title: 'techme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        "/login": (context) => const MyLoginPage(),
        '/register': (context) => const MyRegisterPage(),
        '/otp': (context) => const MyOtpPage(),
      }));
}
