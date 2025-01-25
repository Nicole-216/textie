import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  final String username;
  ChatListScreen(this.username, {super.key});

  final List<String> chatContacts = [
    'John Doe',
    'Jane Smith',
    'Emily Clark',
    'Michael Johnson'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chats")),
      body: ListView.builder(
        itemCount: chatContacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(chatContacts[index]),
            subtitle: Text("Last message..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ChatScreen(username, chatContacts[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final String username;
  final String chatContact;

  const ChatScreen(this.username, this.chatContact, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(chatContact)),
      body: Center(child: Text("Chat with $chatContact")),
    );
  }
}
