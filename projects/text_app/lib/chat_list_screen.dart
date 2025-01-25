import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  final String username;

  const ChatListScreen(this.username, {super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

final List<Map<String, dynamic>> users = [
  {"name": "Alice", "messages": []},
  {"name": "Bob", "messages": []},
  {"name": "Charlie", "messages": []},
  {"name": "David", "messages": []},
  {"name": "Eve", "messages": []},
  {"name": "Frank", "messages": []},
  {"name": "Grace", "messages": []},
  {"name": "Hank", "messages": []},
  {"name": "Ivy", "messages": []},
  {"name": "Jack", "messages": []},
  {"name": "Karl", "messages": []},
  {"name": "Liam", "messages": []},
  {"name": "Mia", "messages": []},
  {"name": "Nina", "messages": []},
  {"name": "Oscar", "messages": []},
  {"name": "Pam", "messages": []},
  {"name": "Quinn", "messages": []},
  {"name": "Riley", "messages": []},
  {"name": "Sara", "messages": []},
  {"name": "Tom", "messages": []},
  {"name": "Uma", "messages": []},
  {"name": "Vera", "messages": []},
  {"name": "Will", "messages": []},
  {"name": "Xavier", "messages": []},
  {"name": "Yara", "messages": []},
  {"name": "Zara", "messages": []},
];

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat List")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final user = users[index];
                  final name = user["name"];
                  return ListTile(
                    title: Text(
                      name,
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.grey.withAlpha(50),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    indent: 16,
                    endIndent: 32,
                    color: Colors.grey.withAlpha(50),
                  );
                },
                itemCount: users.length),
          ),
        ),
      ),
    );
  }
}
