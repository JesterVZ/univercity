import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum TabItem{
  news,
  info,
  timetable,
  more
}

const Map<TabItem, String> tabName = {
  TabItem.news: 'Новости',
  TabItem.info: 'Информация',
  TabItem.timetable: 'Расписание',
  TabItem.more: 'Еще'
};

const Map<TabItem, IconData> TabIcons = {
  TabItem.news: Icons.newspaper,
  TabItem.info: Icons.info,
  TabItem.timetable: Icons.timer,
  TabItem.more: Icons.more_horiz
};