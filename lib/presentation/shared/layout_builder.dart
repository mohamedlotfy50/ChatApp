import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  const PageLayout({
    Key key,
    @required this.mobile,
    this.tablet,
    @required this.web,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shortSide = MediaQuery.of(context).size.shortestSide;
    return LayoutBuilder(
      builder: (context, _) {
        if (shortSide > 950) {
          return web;
        } else if (shortSide > 600) {
          return tablet ?? mobile;
        }
        return mobile;
      },
    );
  }
}
