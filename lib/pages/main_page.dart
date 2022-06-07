import 'package:flutter/material.dart';
import 'package:univercity_application/pages/info.dart';
import 'package:univercity_application/pages/more.dart';
import 'package:univercity_application/pages/news.dart';
import 'package:univercity_application/pages/tab_item.dart';
import 'package:univercity_application/pages/tab_nav.dart';
import 'package:univercity_application/pages/timetable.dart';

import 'bottom_nav.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  var _currentTab = TabItem.news;
  final _navKeys = {
    TabItem.news: GlobalKey<NavigatorState>(),
    TabItem.info: GlobalKey<NavigatorState>(),
    TabItem.timetable: GlobalKey<NavigatorState>(),
    TabItem.more: GlobalKey<NavigatorState>(),
  };
  List<Widget> navigatorList = [];

  @override
  void initState() {
    navigatorList.add(TabNavigator(
      navigatorKey: _navKeys[TabItem.news],
      rootPage: News(),
    ));
    navigatorList.add(TabNavigator(
      navigatorKey: _navKeys[TabItem.info],
      rootPage: Info(),
    ));
    navigatorList.add(TabNavigator(
      navigatorKey: _navKeys[TabItem.timetable],
      rootPage: TimeTable(),
    ));
    navigatorList.add(TabNavigator(
      navigatorKey: _navKeys[TabItem.more],
      rootPage: More(),
    ));
    super.initState();
  }
  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      _navKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
      final isFirstRouteInCurrentTab =
                  !await _navKeys[_currentTab]!.currentState!.maybePop();
      if (isFirstRouteInCurrentTab) {
                //Не страница 'main'
                if (_currentTab != TabItem.news) {
                  _selectTab(TabItem.news);
                  return false;
                }
              }
              return isFirstRouteInCurrentTab;
    },
    child: Scaffold(
      body: IndexedStack(
        index: _currentTab.index,
        children: [
          _buildOffstageNavigator(TabItem.news, navigatorList[0]),
          _buildOffstageNavigator(TabItem.info, navigatorList[1]),
          _buildOffstageNavigator(TabItem.timetable, navigatorList[2]),
          _buildOffstageNavigator(TabItem.more, navigatorList[3]),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentTab: _currentTab,
        onSelectTab: _selectTab,
      )
    ),
    );
  }
  Widget _buildOffstageNavigator(TabItem tabItem, Widget navigator) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: navigator,
    );
  }
}
