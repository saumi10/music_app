import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    // implement dispose
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign Up.',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  //text form fields
                  const SizedBox(height: 30),
                  CustomField(
                    theHintText: 'NAME',
                    myController: nameController,
                  ),
                  const SizedBox(height: 15),
                  CustomField(
                    theHintText: 'EMAIL',
                    myController: emailController,
                  ),
                  const SizedBox(height: 15),
                  CustomField(
                    theHintText: 'PASSWORD',
                    myController: passwordController,
                    isObscureText: true,
                  ),
                  const SizedBox(height: 20),
                  //sign up button
                  AuthGradientButton(),
                  const SizedBox(height: 20),
                  RichText(
                      text: TextSpan(
                          text: 'Already have an account? ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: const [
                        TextSpan(
                          text: 'Sign In.',
                          style: TextStyle(
                              color: Pallete.gradient2,
                              fontWeight: FontWeight.bold),
                        )
                      ]))
                ], //children
              ),
            ),
          ),
        ),
      ),
    );
  }
}
