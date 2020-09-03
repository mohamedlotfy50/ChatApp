import 'dart:io';
import 'package:flutter/widgets.dart';

abstract class PlatformAware<ios extends Widget, android extends Widget>
    extends StatelessWidget {
  ios buildIos(BuildContext context);
  ios buildAndroid(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildIos(context);
    }
    return buildAndroid(context);
  }
}
