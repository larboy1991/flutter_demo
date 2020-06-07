import 'package:flutter/material.dart';
import 'package:demo/route/route_path.dart';
import 'package:demo/route/vv_route_manager.dart';
import 'package:provider/provider.dart';
import 'package:demo/provider_setup.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(platform: TargetPlatform.iOS),
      initialRoute: RoutePathConstant.HOME,
      onGenerateRoute: VvRouteManager.generateRoute,
    );
  }
}
