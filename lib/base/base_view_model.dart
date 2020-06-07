import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'appbar_controller.dart';
import 'state/empty_state_controller.dart';

///基础ViewModel
abstract class BaseViewModel with ChangeNotifier , AppBarController {

  ///缺省页状态
  EmptyState state;


  void setAppTitle(String title) {
    appTitle = title;
    notifyListeners();
  }

  void setBackgroundColor(Color backgroundColor) {
    this.appbarColor = backgroundColor;
    notifyListeners();
  }

  void isNeedToolbar(bool needToolBar) {
    this.needToolBar = needToolBar;
    notifyListeners();
  }


  ///设置缺省页状态
  void setEmptyState(EmptyState state){
    this.state=state;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
  }

}
