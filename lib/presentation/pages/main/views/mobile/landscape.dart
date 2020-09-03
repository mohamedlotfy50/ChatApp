import 'package:chat_arc/presentation/pages/main/widgets/navigation_rail.dart';
import 'package:flutter/widgets.dart';

class MainPageMobileLandscape extends StatelessWidget {
  final bool expanded;
  final Function(int) onTap;
  final int selectedIndex;
  final Widget child;
  const MainPageMobileLandscape({
    Key key,
    @required this.expanded,
    @required this.onTap,
    @required this.selectedIndex,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: child,
          ),
        ),
        MyNavigationRail(
          expanded: expanded,
          onTap: onTap,
          selectedIndex: selectedIndex,
        ),
      ],
    );
  }
}
