import 'package:flutter/material.dart';
import 'package:groccery_app/consts/cart.dart';
import 'package:groccery_app/consts/hidden_drawer.dart';
import 'package:groccery_app/screens/intro.dart';
// ignore: unused_import
import 'package:groccery_app/screens/signup.dart';
// ignore: unused_import
import 'package:groccery_app/screens/login.dart';
// ignore: unused_import
import 'package:groccery_app/screens/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
        child: MaterialApp(
          home: SplashPage(),
          theme: ThemeData(primarySwatch: Colors.green, fontFamily: "Roboto"),
        ));
  }
}
