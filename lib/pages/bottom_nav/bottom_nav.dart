import 'package:flutter/material.dart';
import 'package:univercity_application/pages/bottom_nav/bottom_nav.dart';
import 'package:univercity_application/pages/tabs/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    required this.currentTab,
    required this.onSelectTab
  });
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.news),
        _buildItem(TabItem.info),
        _buildItem(TabItem.timetable),
        _buildItem(TabItem.more),
      ],
      onTap: (index) => onSelectTab(TabItem.values[index]),
      currentIndex: currentTab.index,
    );
  }
  BottomNavigationBarItem _buildItem(TabItem tabItem){
    return BottomNavigationBarItem(
      icon: Icon(TabIcons[tabItem], color: _colorMatching(tabItem)),
      label: tabName[tabItem],
    );
  }
  Color _colorMatching(TabItem item) {
    return currentTab == item ? const Color.fromARGB(255, 4, 133, 0) : Colors.grey;
  }
}