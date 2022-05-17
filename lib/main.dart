import 'package:flutter/material.dart';
import 'package:project_flutter/screens/Successful.dart';
import 'package:project_flutter/screens/auth/sign%20In.dart';
import 'package:project_flutter/screens/auth/signup.dart';
import 'package:project_flutter/screens/cart.dart';
import 'package:project_flutter/screens/evaluation.dart';
import 'package:project_flutter/screens/launch/launch_screen.dart';
import 'package:project_flutter/screens/launch/page_view.dart';
import 'package:project_flutter/screens/profile.dart';
import 'package:project_flutter/screens/settings.dart';
import 'package:project_flutter/screens/tabview.dart';
import 'package:project_flutter/screens/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LaunchScreen',
      routes: {
        '/LaunchScreen': (context) => const LaunchScreen(),
        '/Page_View': (context) => const Page_View(),
        '/SingIN': (context) => const SingIN(),
        '/Sign_Up': (context) => const Sign_Up(),
        '/View': (context) => const View(),
        '/Cart': (context) => const Cart(),
        '/TabView': (context) => const TabView(),
        '/Profile': (context) => const Profile(),
        '/Settings': (context) => const Settings(),
        '/Evaluation': (context) => const Evaluation(),
        '/Successful': (context) => const Successful(),
      },
    );
  }
}
