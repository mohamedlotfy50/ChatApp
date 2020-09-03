import 'package:chat_arc/model/message_model.dart';
import 'package:chat_arc/presentation/pages/main/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Message> messages = [
    Message(
        userName: 'User Name',
        lastMessage: 'This is last message',
        date: '29/8/2020'),
    Message(
        userName: 'User Name',
        lastMessage: 'This is last message',
        date: '29/8/2020'),
    Message(
        userName: 'User Name',
        lastMessage: 'This is last message',
        date: '29/8/2020'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return MyListTile(
          userName: messages[index].userName,
          lastMessage: messages[index].lastMessage,
          date: messages[index].date,
        );
      },
    );
  }
}
