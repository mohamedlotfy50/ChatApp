import 'package:chat_arc/presentation/pages/main/screens/calls_screen.dart';
import 'package:chat_arc/presentation/pages/main/screens/home_screen.dart';
import 'package:chat_arc/presentation/pages/main/screens/me_screen.dart';
import 'package:chat_arc/presentation/pages/main/screens/stories_screen.dart';
import 'package:chat_arc/presentation/pages/main/views/mobile/landscape.dart';
import 'package:chat_arc/presentation/pages/main/views/mobile/portrait.dart';
import 'package:chat_arc/presentation/pages/main/widgets/bottom_navigation_bar.dart';
import 'package:chat_arc/presentation/shared/appBar.dart';
import 'package:chat_arc/presentation/shared/page_structure.dart';
import 'package:chat_arc/presentation/shared/scaffold.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final Map<String, Widget> pages = {
    'Home': HomeScreen(),
    'Stories': Center(
      child: StoriesScreen(),
    ),
    'Calls': CallsScreen(),
    'Me': MeScreen(),
  };
  navigatToNextPage(int i) {
    setState(() {
      currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('ChatApp'),
      ),
      body: SafeArea(
        child: PageStructure(
          mobilePortrait: MainPageMobilePortrait(
            child: pages.values.toList()[currentIndex],
          ),
          mobileLandscape: MainPageMobileLandscape(
            expanded: false,
            onTap: navigatToNextPage,
            selectedIndex: currentIndex,
            child: pages.values.toList()[currentIndex],
          ),
          tabletLandscape: MainPageMobileLandscape(
            expanded: true,
            onTap: navigatToNextPage,
            selectedIndex: currentIndex,
            child: pages.values.toList()[currentIndex],
          ),
        ),
      ),
      hasTabs: true,
      bottomNavigationBar: PageStructure(
        mobileLandscape: SizedBox.shrink(),
        mobilePortrait: PlatformBottomNavBar(
          currentIndex: currentIndex,
          onTap: navigatToNextPage,
        ),
      ),
      pageIndex: currentIndex,
    );
  }
}
