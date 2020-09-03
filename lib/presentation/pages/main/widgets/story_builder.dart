import 'package:chat_arc/model/story_model.dart';
import 'package:flutter/material.dart';

class StoryBuilder extends StatelessWidget {
  final String title;
  final bool condition;
  final List<Story> stories;
  const StoryBuilder({
    Key key,
    this.title,
    this.stories,
    this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  alignment: Alignment.centerLeft,
                  height: 30,
                  child: Text('recent update'),
                ),
              ),
            ],
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: stories.length,
            itemBuilder: (BuildContext context, int index) {
              if (stories[index].isViewed == condition)
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 28,
                  ),
                  title: Text(stories[index].userName),
                  subtitle: Text(stories[index].date),
                  trailing: Text(stories[index].isViewed.toString()),
                );
              return SizedBox.shrink();
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
