import 'package:chatapp/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.send_rounded),
            hintText: 'Send Message',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return const ChatBubble(
            message: 'message',
          );
        },
      ),
    );
  }
}
