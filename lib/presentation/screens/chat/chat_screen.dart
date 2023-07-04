import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget { // When it's a Screen it returns a Scaffold
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iron Man 🤖'),
        centerTitle: false, // Android doesn't center the title by default
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://forosmexico.mx/data/avatars/o/0/14.jpg?1601469704'),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea( // Safe Area is the part not taken by the buttons or camera
      // left: false, // This takes the space of the camera
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100, // To generate 100 elements
              itemBuilder: (context, index) { // context is _ChatView, index is generated index
              return( index % 2 == 0 )
              ? const MyMessageBubble()
              : const HisMessageBubble();
            })),
          ],
        ),
      ),
    );
  }
}