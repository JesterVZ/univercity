import 'package:flutter/material.dart';
import 'package:univercity_application/pages/news.dart';
import 'package:univercity_application/pages/timetable.dart';

import '../info.dart';
import '../more.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String info = '/info';
  static const String timetable = '/timetable';
  static const String more = '/more';
}

class TabNavigator extends StatelessWidget{
  TabNavigator({required this.navigatorKey, required this.rootPage});

  final GlobalKey<NavigatorState>? navigatorKey;
  final Widget rootPage;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context){
    return {
      TabNavigatorRoutes.root: (context) => rootPage,
      TabNavigatorRoutes.info: (context) => Info(),
      TabNavigatorRoutes.timetable: (context) => TimeTable(),
      TabNavigatorRoutes.more: (context) => More()
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings){
        return MaterialPageRoute(builder: (context) => routeBuilders[routeSettings.name!]!(context));
      }
    );
  }
  
}