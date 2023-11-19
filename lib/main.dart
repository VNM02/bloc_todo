import 'package:bloc_todo/screens/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.orange,
        fontFamily: 'EmilysCandy',
        scaffoldBackgroundColor: Colors.orange[100],
      ),
      home:Authentication(),
    );
  }
}
