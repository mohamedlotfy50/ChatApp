import 'package:flutter/material.dart';

class MainPageMobilePortrait extends StatelessWidget {
  final Widget child;
  const MainPageMobilePortrait({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
