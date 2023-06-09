import 'package:flutter/material.dart';
import 'package:thewall/components/button.dart';
import 'package:thewall/components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // ↓ Add this.
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo - icon
                Icon(
                  Icons.lock_outline,
                  size: 100,
                  color: theme.colorScheme.onBackground,
                ),
                const SizedBox(
                  height: 15,
                ),

                //welcome - text
                Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle(
                    color: theme.colorScheme.onBackground,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //email - text-field
                MyTextField(
                    controller: emailTextController,
                    labelText: 'Email Address',
                    hintText: 'samone@thewall.com',
                    obscureText: false),
                const SizedBox(
                  height: 10,
                ),

                //password - text-field
                MyTextField(
                  controller: passwordTextController,
                  labelText: 'Password',
                  hintText: 'Make sure its the correct password.',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),

                //sign in - button
                MyButton(onTap: () {}, text: 'Sign In'),
                const SizedBox(
                  height: 10,
                ),

                //sign up - text-button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Sign Up Now!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
