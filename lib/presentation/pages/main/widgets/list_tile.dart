import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyListTile extends StatelessWidget {
  final String userName;
  final String lastMessage;
  final String date;
  const MyListTile({
    Key key,
    this.userName,
    this.lastMessage,
    this.date,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 28,
            ),
            title: Text(userName),
            subtitle: Text(lastMessage),
            trailing: Text(date),
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton.icon(
                    icon: Icon(Icons.call),
                    label: Text('Voice call'),
                    onPressed: () {}),
              ),
              Expanded(
                  child: FlatButton.icon(
                      icon: Icon(Icons.videocam),
                      label: Text('Video call'),
                      onPressed: () {})),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
