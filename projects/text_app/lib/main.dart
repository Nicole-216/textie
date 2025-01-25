
        
import 'package:flutter/material.dart';
import 'package:text_app/chat_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Enter your name"),
            ),
            ElevatedButton(
              onPressed: () {
                String username = _controller.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ChatListScreen(username)),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

