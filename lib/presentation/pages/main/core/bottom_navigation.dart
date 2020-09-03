import 'package:chat_arc/presentation/core/widgets/platform_aware.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformBottomNavigation extends PlatformAware {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final Function(int) onTap;
  final bool hasLabels;
  PlatformBottomNavigation({
    this.hasLabels,
    @required this.currentIndex,
    @required this.items,
    @required this.onTap,
  });

  @override
  Widget buildAndroid(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: hasLabels ?? true,
      showUnselectedLabels: hasLabels ?? true,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      items: items,
      onTap: onTap,
    );
  }

  @override
  Widget buildIos(BuildContext context) {
    return CupertinoTabBar(
      currentIndex: currentIndex,
      items: items,
      onTap: onTap,
    );
  }
}
