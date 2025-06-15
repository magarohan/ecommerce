import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/themes/colors.dart';

class LoginScreen
    extends
        StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<
    LoginScreen
  >
  createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends
        State<
          LoginScreen
        > {
  final TextEditingController
  _emailController =
      TextEditingController();
  final TextEditingController
  _passwordController =
      TextEditingController();

  Future<
    void
  >
  onPressed() async {
    // TODO: Add authentication logic here
    Navigator.pushNamed(
      context,
      '/home',
    );
    String
    email =
        _emailController.text.trim();
    String
    password =
        _passwordController.text.trim();

    // For debugging:
    print(
      'Email: $email',
    );
    print(
      'Password: $password',
    );
  }

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 342,
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: MyColors.backgroundColor2,
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 342,
                  child: TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: MyColors.backgroundColor2,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            4,
                          ),
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 342,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        MyColors.primaryColor,
                      ),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () => {
                    Navigator.pushNamed(
                      context,
                      '/signup',
                    ),
                  },
                  child: const Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
