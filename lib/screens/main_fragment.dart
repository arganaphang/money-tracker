import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chart/chart_screen.dart';
import 'home/home_screen.dart';
import 'setting/setting_screen.dart';

class ScreenFragment {
  final NavigationDestination item;
  final Widget screen;
  const ScreenFragment(this.item, this.screen);
}

final List<ScreenFragment> fragments = [
  const ScreenFragment(
    NavigationDestination(
      icon: Icon(CupertinoIcons.house),
      selectedIcon: Icon(CupertinoIcons.house_fill),
      label: 'Home',
    ),
    HomeScreen(),
  ),
  const ScreenFragment(
    NavigationDestination(
      icon: Icon(CupertinoIcons.chart_bar),
      selectedIcon: Icon(CupertinoIcons.chart_bar_fill),
      label: 'Chart',
    ),
    ChartScreen(),
  ),
  const ScreenFragment(
    NavigationDestination(
      icon: Icon(CupertinoIcons.gear),
      selectedIcon: Icon(CupertinoIcons.gear_solid),
      label: 'Settings',
    ),
    SettingScreen(),
  ),
];
