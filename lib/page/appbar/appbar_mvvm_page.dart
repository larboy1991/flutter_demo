import 'dart:math';

import 'package:demo/base/base_page.dart';
import 'package:demo/base/base_view_model.dart';
import 'package:demo/base/state/empty_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/services.dart';


class AppbarMvvmPage extends BasePageView<AppbarMvvmViewModel> {
  List<Color> colors = List<Color>();

  AppbarMvvmPage() {
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
  AppbarMvvmViewModel createViewModel() {
    return AppbarMvvmViewModel();
  }

  @override
  Widget setContentView(BuildContext context) {
    return Center(
      child: new Column(
        children: <Widget>[
          _buttom('改变标题栏背景颜色', () {
            viewModel
                .setBackgroundColor(colors[Random().nextInt(colors.length)]);
          }),
          _buttom('改变标题', () {
            viewModel.changeTitle();
          }),
          _buttom('标题栏显示隐藏', () {
            viewModel.isNeedToolbar(!viewModel.needToolBar);
          }),
          _buttom('显示缺省页', () {
            viewModel.showNetError();
//            viewModel.isNeedToolbar(!viewModel.needToolBar);
          }),
        ],
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

  @override
  bool isNeedToolbar() {
    return true;
  }
}

///Appbar ViewModel
class AppbarMvvmViewModel extends BaseViewModel {

  ///改变标题
  void changeTitle(){
    setAppTitle(new WordPair.random().asPascalCase);
  }


  void showNetError(){
    setEmptyState(EmptyState.netError);
    Future.delayed(const Duration(seconds:2),(){
      setEmptyState(EmptyState.normal);
    });
  }


}
