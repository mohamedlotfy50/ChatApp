import 'package:chat_arc/presentation/core/widgets/platform_app.dart';
import 'package:chat_arc/presentation/pages/main/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'chat app',
      home: MainPage(),
    );
  }
}
