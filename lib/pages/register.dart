import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();

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
                  Icons.lock_open_outlined,
                  size: 100,
                  color: theme.colorScheme.onBackground,
                ),
                const SizedBox(
                  height: 15,
                ),

                //welcome - text
                Text(
                  "Let's create an account for you.",
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
                    hintText: 'Must be more than 8 characters!',
                    obscureText: true),
                const SizedBox(
                  height: 10,
                ),

                //password - text-field
                MyTextField(
                    controller: confirmPasswordTextController,
                    labelText: 'Confirm Password',
                    hintText: 'Does it match with the above password?',
                    obscureText: true),
                const SizedBox(
                  height: 10,
                ),

                //sign in - button
                MyButton(onTap: () {}, text: 'Sign Up'),
                const SizedBox(
                  height: 10,
                ),

                //sign up - text-button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
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
                        'Sign In Now!',
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
