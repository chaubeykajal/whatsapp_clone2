import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/RegisteredPages/signup.dart';
import 'package:whatsapp_clone2/RegisteredPages/verify.dart';

import 'RegisteredPages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:verifynumber(),
    );
  }
}