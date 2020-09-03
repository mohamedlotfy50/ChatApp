import 'package:chat_arc/presentation/core/widgets/platform_aware.dart';
import 'package:chat_arc/presentation/shared/orientation_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformScaffold extends PlatformAware {
  final Widget body;
  final bool hasTabs;
  final PreferredSizeWidget appBar;
  final Widget bottomNavigationBar;
  final int pageIndex;

  PlatformScaffold({
    this.pageIndex,
    this.hasTabs,
    this.bottomNavigationBar,
    this.appBar,
    this.body,
  });

  @override
  Widget buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  @override
  Widget buildIos(BuildContext context) {
    return PageOrentaion(
      portrait: CupertinoTabScaffold(
        tabBar: bottomNavigationBar,
        tabBuilder: (BuildContext context, _) {
          return CupertinoTabView(
            builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: appBar,
                child: body,
              );
            },
          );
        },
      ),
      landscape: CupertinoPageScaffold(
        navigationBar: appBar,
        child: body,
      ),
    );
  }
}
