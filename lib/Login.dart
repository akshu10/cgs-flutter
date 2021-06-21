import 'package:flutter/material.dart';

// Define a LoginForm Widget.
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

// Define a State Class for the Widget.
class _LoginFormState extends State<LoginForm> {
  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: ' Email'),
            onChanged: (username) => {print('Username: $username')},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: ' Password',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () => print("Login Button Pressed"),
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
