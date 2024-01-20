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
      }));
}
