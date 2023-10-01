// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types, unused_local_variable
import 'package:firebase_core/firebase_core.dart';
import 'package:my_app/todoapp.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:my_app/api_page.dart';
import 'package:my_app/api_post_page.dart';
import 'package:my_app/homescreen.dart';
import 'package:my_app/lab6.dart';
import 'package:my_app/listviewexample.dart';
import 'package:my_app/practice.dart';
import 'package:my_app/signup.dart';
import 'package:my_app/whatsapp.dart';

import 'calculator.dart';
import 'concatenation.dart';
import 'gridviewexample.dart';
import 'login.dart';
import 'sirfile.dart';
import 'dart:convert';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
    '/homescreen': (context) => homescreen(),
    '/login': (context) => LoginPage(),},

      debugShowCheckedModeBanner: false,
      title: 'Osama App',

      home: MyTodos(),
    );
  }
  
  
  
  
}





