import 'package:chat_arc/presentation/core/widgets/platform_aware.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformApp extends PlatformAware {
  final Widget home;
  final String title;
  final ThemeData materialTheme;
  final CupertinoThemeData cupertinoTheme;

  PlatformApp({
    this.title,
    this.materialTheme,
    this.cupertinoTheme,
    this.home,
  });

  @override
  Widget buildAndroid(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: materialTheme,
      home: home,
    );
  }

  @override
  Widget buildIos(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: cupertinoTheme,
      home: home,
    );
  }
}
