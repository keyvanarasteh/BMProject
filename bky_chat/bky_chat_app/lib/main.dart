// ignore_for_file: prefer_const_constructors

import 'package:bky_chat_app/responsive/resposive_layout.dart';
import 'package:bky_chat_app/screens/mobile_screen_layout.dart';
import 'package:bky_chat_app/screens/web_screen_layout.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bkychat UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor : backgroundColor,
      ),
      home: const ResponsiveLayout (
        mobileScreenLayout :  MobileLayoutScreen () , 
        webScreenLayout :  WebScreenLayout(),
        ),
    );
  }
}

