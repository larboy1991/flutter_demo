import 'package:flutter/material.dart';

///标题栏的状态   避免都堆积在BaseViewModel里面
class AppBarController {
  ///标题栏背景颜色
  Color appbarColor = Colors.blue;

  ///标题
  String appTitle = '';

  ///是否需要标题栏
  bool needToolBar = true;

}
