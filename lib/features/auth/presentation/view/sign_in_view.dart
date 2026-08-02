import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/sign_in_state.dart';
import '../view_model/sign_in_view_model.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class  _SignInViewState extends State<SignInView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: BlocConsumer<SignInViewModel, SignInState>(
        listener: (context, state) {
          if (state is SignInError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failure.message),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is SignInSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Login Successful!'),
                backgroundColor: Colors.green,
              ),
            );

          }
        },

        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Email Field
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24),


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: state is SignInLoading
                      ? null
                      : () {

                    context.read<SignInViewModel>().signIn(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                    );
                  },
                  child: state is SignInLoading
                      ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                      : const Text(
                    'Login',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}