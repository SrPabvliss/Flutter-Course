import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://discord.onl/wp-content/uploads/2023/08/Gatos.jpg'),
          ),
        ),
        title: const Text('Mibida'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return const MyMessageBubble();
                } else {
                  return const HerMessageBubble();
                }
              },
            )),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
