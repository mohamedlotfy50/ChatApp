import 'dart:io';

import 'package:chat_arc/presentation/shared/layout_builder.dart';
import 'package:chat_arc/presentation/shared/orientation_builder.dart';
import 'package:flutter/material.dart';

class PageStructure extends StatelessWidget {
  final Widget mobileLandscape;
  final Widget mobilePortrait;
  final Widget tabletLandscape;
  final Widget tabletPortrait;
  final Widget webMobile;
  final Widget webTablet;
  final Widget webFullscreen;

  const PageStructure({
    this.mobileLandscape,
    this.mobilePortrait,
    this.tabletLandscape,
    this.tabletPortrait,
    this.webMobile,
    this.webTablet,
    this.webFullscreen,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS) {
      return PageLayout(
        mobile: PageOrentaion(
          landscape: mobileLandscape,
          portrait: mobilePortrait,
        ),
        tablet: PageOrentaion(
          landscape: tabletLandscape ?? mobileLandscape,
          portrait: tabletPortrait ?? mobilePortrait,
        ),
        web: webFullscreen,
      );
    }
    return PageLayout(
      mobile: webMobile,
      tablet: webTablet,
      web: webFullscreen,
    );
  }
}
