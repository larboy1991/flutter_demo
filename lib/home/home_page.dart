import 'package:demo/widget/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:demo/route/route_path.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: DefaultAppBar(title: '主页').build(context),
        body: Center(
          child: new Column(
            children: <Widget>[
//              _buttom('权限申请', () {
//                Navigator.of(context).pushNamed(RoutePathConstant.PERMINNION);
//              }),
              _buttom('标题样式设置', () {
                Navigator.of(context).pushNamed(RoutePathConstant.APPBAR);
              }),

            ],
          ),
        ),
      ),
    );
  }

  ///按钮
  Widget _buttom(String label, VoidCallback onPressed) {
    return MaterialButton(
      child: Text(label),
      color: Colors.lightBlueAccent,
      textColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      onPressed: onPressed,
    );
  }
}
