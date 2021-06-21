import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), routes: <String, WidgetBuilder>{
    '/login': (BuildContext context) => LoginForm(),
  }));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: Center(
        // Drop the const, and
        //child: Text('Hello World'),     // Replace this text...
        child: ElevatedButton(
          child: Text('Login Screen'),
          onPressed: () => Navigator.pushNamed(context, '/login'),
        ), // With this text.
      ),
    );
  }
}
