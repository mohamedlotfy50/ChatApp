import 'package:chat_arc/presentation/pages/main/core/Platform_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNavigationRail extends StatelessWidget {
  final bool expanded;
  final Function(int) onTap;
  final int selectedIndex;
  final List<NavigationRailDestination> items = [
    NavigationRailDestination(
      icon: PlatformIcon(
        androidIcon: Icons.home,
        iosIcon: CupertinoIcons.home,
      ),
      label: Text('Home'),
    ),
    NavigationRailDestination(
      icon: PlatformIcon(
        androidIcon: Icons.people,
        iosIcon: CupertinoIcons.group,
      ),
      label: Text('Stories'),
    ),
    NavigationRailDestination(
      icon: PlatformIcon(
        androidIcon: Icons.phone,
        iosIcon: CupertinoIcons.phone,
      ),
      label: Text('Calls'),
    ),
    NavigationRailDestination(
      icon: CircleAvatar(
        backgroundColor: Colors.black,
      ),
      label: Text('me'),
    ),
  ];

  MyNavigationRail({
    Key key,
    @required this.expanded,
    @required this.onTap,
    @required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO:this navigation rail missing alot of features build a navigation rail with look like the bottom naviagtion bar
    return NavigationRail(
      labelType: expanded
          ? NavigationRailLabelType.none
          : NavigationRailLabelType.selected,
      destinations: items,
      selectedIndex: selectedIndex,
      onDestinationSelected: onTap,
      extended: expanded,
    );
  }
}
