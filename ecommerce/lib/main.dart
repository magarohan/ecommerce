import 'package:ecommerce/profile.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/login.dart';
import 'package:ecommerce/signup.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/category.dart';

void
    main() {
  runApp(
      const MainApp());
}

class MainApp
    extends StatelessWidget {
  const MainApp(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        '/category': (context) => const CategoryScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
