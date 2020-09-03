import 'package:chat_arc/model/Calls_model.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  final List<Calls> calls = [
    Calls(
      userName: 'UserName',
      callIcon: Icons.call_made,
      date: '20/20/2020',
    ),
    Calls(
      userName: 'UserName',
      callIcon: Icons.call_missed,
      date: '20/20/2020',
    ),
    Calls(
        userName: 'UserName',
        callIcon: Icons.call_received,
        date: '20/20/2020'),
    Calls(
      userName: 'UserName',
      callIcon: Icons.call_end,
      date: '20/20/2020',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.black,
          ),
          title: Text(calls[index].userName),
          subtitle: Row(
            children: [
              Icon(calls[index].callIcon),
              SizedBox(
                width: 10,
              ),
              Text(calls[index].date),
            ],
          ),
          trailing: Container(
            width: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.call), onPressed: () {}),
                IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}
