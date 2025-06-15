import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_ecommerce/cart.dart';
import 'package:flutter_ecommerce/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/login.dart';
import 'package:flutter_ecommerce/signup.dart';
import 'package:flutter_ecommerce/home.dart';
import 'package:flutter_ecommerce/category.dart';

void
main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    const MainApp(),
  );
}

class MainApp
    extends
        StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        '/login':
            (
              context,
            ) => const LoginScreen(),
        '/signup':
            (
              context,
            ) => const SignupScreen(),
        '/home':
            (
              context,
            ) => const HomeScreen(),
        '/category':
            (
              context,
            ) => const CategoryScreen(),
        '/profile':
            (
              context,
            ) => const ProfileScreen(),
        '/cart':
            (
              context,
            ) => const CartScreen(),
      },
    );
  }
}
