import 'package:demo/home/home_page.dart';
import 'package:demo/page/appbar/appbar_mvvm_page.dart';
import 'package:demo/permission/permission_page.dart';
import 'package:flutter/material.dart';
import 'package:demo/route/route_path.dart';
import 'package:demo/page/appbar/appbar_page.dart';

class VvRouteManager{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutePathConstant.HOME:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RoutePathConstant.PERMINNION:
        return MaterialPageRoute(builder: (_) => PermissionApp());
      case RoutePathConstant.APPBAR:
        return MaterialPageRoute(builder: (_) => AppbarMvvmPage());
    }
  }
}