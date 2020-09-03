import 'package:chat_arc/presentation/core/widgets/platform_aware.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformIcon extends PlatformAware {
  final IconData androidIcon;
  final IconData iosIcon;

  PlatformIcon({
    @required this.androidIcon,
    @required this.iosIcon,
  });

  @override
  Widget buildAndroid(BuildContext context) {
    return Icon(androidIcon);
  }

  @override
  Widget buildIos(BuildContext context) {
    return Icon(iosIcon);
  }
}
