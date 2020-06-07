import 'dart:math';

import 'package:demo/widget/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppbarPage extends StatelessWidget {
  AppbarViewModel _viewModel = new AppbarViewModel();

  List<Color> colors = List<Color>();

  AppbarPage() {
    colors.add(Colors.amberAccent);
    colors.add(Colors.amber);
    colors.add(Colors.lightBlueAccent);
    colors.add(Colors.lightBlue);
    colors.add(Colors.red);
    colors.add(Colors.blueGrey);
    colors.add(Colors.greenAccent);
    colors.add(Colors.lightGreenAccent);
  }

  @override
  Widget build(BuildContext context) {
    print('[zhuanghz] 重新build了');
    return ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: Consumer<AppbarViewModel>(
        builder: (context, model, child) => MaterialApp(
          home: Scaffold(
            appBar: DefaultAppBar(
                    title: 'Appbar Test', appbarColor: _viewModel.appbarColor)
                .build(context),
            body: Center(
              child: new Column(
                children: <Widget>[
                  _buttom('改变标题栏颜色', () {
                    _viewModel.setBackgroundColor(
                        colors[Random().nextInt(colors.length)]);
                  }),
                ],
              ),
            ),
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


///appbar viewModel   通过使用provider 实现viewModel
class AppbarViewModel with ChangeNotifier {
  Color appbarColor = Colors.blue;

  void setBackgroundColor(Color backgroundColor) {
    this.appbarColor = backgroundColor;
    notifyListeners();
  }
}
