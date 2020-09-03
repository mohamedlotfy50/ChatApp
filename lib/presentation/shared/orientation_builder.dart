import 'package:flutter/material.dart';

class PageOrentaion extends StatelessWidget {
  final Widget portrait;
  final Widget landscape;
  const PageOrentaion({Key key, this.portrait, this.landscape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.portrait) {
          return portrait;
        }
        return landscape;
      },
    );
  }
}
