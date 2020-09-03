import 'package:chat_arc/presentation/pages/main/core/Platform_icons.dart';
import 'package:chat_arc/presentation/pages/main/core/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformBottomNavBar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;
  final bool hasLabels;

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: PlatformIcon(
        androidIcon: Icons.home,
        iosIcon: CupertinoIcons.home,
      ),
      title: Text('Home'),
    ),
    BottomNavigationBarItem(
      icon: PlatformIcon(
        androidIcon: Icons.people,
        iosIcon: CupertinoIcons.group,
      ),
      title: Text('Stories'),
    ),
    BottomNavigationBarItem(
      icon: PlatformIcon(
        androidIcon: Icons.phone,
        iosIcon: CupertinoIcons.phone,
      ),
      title: Text('Calls'),
    ),
    BottomNavigationBarItem(
      icon: CircleAvatar(
        backgroundColor: Colors.black,
      ),
      title: Text('me'),
    ),
  ];

  PlatformBottomNavBar(
      {Key key,
      @required this.onTap,
      @required this.currentIndex,
      this.hasLabels})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformBottomNavigation(
      items: items,
      onTap: onTap,
      currentIndex: currentIndex,
      hasLabels: hasLabels,
    );
  }
}
