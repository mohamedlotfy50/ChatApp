import 'package:chat_arc/presentation/core/widgets/platform_aware.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformAppBar extends PlatformAware implements PreferredSizeWidget {
  final List<Widget> actions;
  final Widget title;

  PlatformAppBar({
    this.actions,
    this.title,
  });

  @override
  Widget buildAndroid(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
    );
  }

  @override
  Widget buildIos(BuildContext context) {
    return CupertinoNavigationBar(
      middle: title,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
