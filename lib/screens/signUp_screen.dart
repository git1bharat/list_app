import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_app/app/auth/bloc/bloc/auth_bloc.dart';
import 'package:list_app/screens/home_screen.dart';
import 'package:list_app/screens/widgets/list_app_button.dart';
import 'package:list_app/screens/widgets/list_app_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            loginSuccess: () {},
            loginFailure: (_) {},
            signupSuccess: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Sign Up Failed: $message')),
              );
            },
            signupFailure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 350),
                  ListAppTextField(
                    controller: nameTextController,
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Name',
                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ListAppTextField(
                    controller: phoneTextController,
                    prefixIcon: Icon(Icons.phone),
                    keyboardType: TextInputType.number,
                    hintText: 'Mobile',
                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your phone number';
                      }
                      if (value.length != 10 ||
                          !RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Invalid phone number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ListAppTextField(
                    controller: passwordTextController,
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  ListAppButton(
                    buttonName: 'Sign Up',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.signUP(
                            nameTextController.text,
                            phoneTextController.text,
                            passwordTextController.text,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
