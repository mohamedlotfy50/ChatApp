import 'package:chat_arc/model/story_model.dart';
import 'package:chat_arc/presentation/pages/main/widgets/story_builder.dart';
import 'package:flutter/material.dart';

class StoriesScreen extends StatelessWidget {
  StoriesScreen({Key key}) : super(key: key);

  final List<Story> stories = [
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: false,
      stories: [],
    ),
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: true,
      stories: [],
    ),
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: false,
      stories: [],
    ),
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: true,
      stories: [],
    ),
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: false,
      stories: [],
    ),
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: true,
      stories: [],
    ),
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: false,
      stories: [],
    ),
    Story(
      userName: 'User Name',
      date: '20/20/2020',
      isViewed: true,
      stories: [],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.black,
            ),
            title: Text('My Story'),
            subtitle: Text('tap to add a story'),
            trailing: FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
              label: Text('13'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          StoryBuilder(
            title: 'Updated',
            stories: stories,
            condition: false,
          ),
          StoryBuilder(
            title: 'Viewed',
            stories: stories,
            condition: true,
          ),
        ],
      ),
    );
  }
}
