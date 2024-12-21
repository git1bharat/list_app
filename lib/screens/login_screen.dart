import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/auth/bloc/bloc/auth_bloc.dart';
import 'package:list_app/screens/home_screen.dart';
import 'package:list_app/screens/signUp_screen.dart';
import 'package:list_app/screens/widgets/list_app_button.dart';
import 'package:list_app/screens/widgets/list_app_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  bool valuefirst = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              loading: () {},
              loginSuccess: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              loginFailure: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
              signupSuccess: () {},
              signupFailure: (message) {},
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Login Failed: $message')),
                );
              });
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 350,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListAppTextField(
                        controller: phoneTextController,
                        prefixIcon: const Icon(Icons.phone),
                        keyboardType: TextInputType.number,
                        hintText: 'Mobile',
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your number';
                          }
                          if (value.trim().length != 10 ||
                              !RegExp(r'^[0-9]+$').hasMatch(value.trim())) {
                            return 'Invalid mobile number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      ListAppTextField(
                        controller: passwordTextController,
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'Password',
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      ListAppButton(
                        buttonName: 'Login',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            BlocProvider.of<AuthBloc>(context).add(
                                AuthEvent.login(phoneTextController.text,
                                    passwordTextController.text));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text('Forgotten password?'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                    },
                    child: const Text('Sign Up to create account'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}





  //  if (_formKey.currentState!.validate()) {
  //                               String? loginResult =
  //                                  quizBloc.add(QuizEvent.login(phoneTextController.text, passwordTextController.text))

  //                               if (loginResult == "success") {
  //                                 Navigator.of(context).pushReplacement(
  //                                   MaterialPageRoute(
  //                                       builder: (context) =>
  //                                           const QuizScreen()),
  //                                 );
  //                               } else if (loginResult == "number_not_found") {
  //                                 ScaffoldMessenger.of(context).showSnackBar(
  //                                   const SnackBar(
  //                                       content: Text(
  //                                           'Account not found with this number')),
  //                                 );
  //                               } else if (loginResult ==
  //                                   "incorrect_password") {
  //                                 ScaffoldMessenger.of(context).showSnackBar(
  //                                   const SnackBar(
  //                                       content: Text('Incorrect password')),
  //                                 );
  //                               } else {
  //                                 ScaffoldMessenger.of(context).showSnackBar(
  //                                   const SnackBar(
  //                                       content: Text(
  //                                           'An unexpected error occurred')),
  //                                 );
  //                               }
  //                             }