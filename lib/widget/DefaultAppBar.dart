import 'package:flutter/material.dart';

class DefaultAppBar {
  String title;
  Color appbarColor;

  DefaultAppBar({this.title = '', this.appbarColor = Colors.white});

  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text(
        title == null ? '' : title,
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: appbarColor,
      elevation: 0.5,
    );
  }
}
