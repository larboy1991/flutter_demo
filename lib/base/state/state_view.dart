import 'package:demo/base/state/empty_state_controller.dart';
import 'package:flutter/material.dart';

///网络错误缺省页
class StateNetErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('当前网络错误'),
      ),
    );
  }
}

///加载中的缺省页
class StateLoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('正在加载中...'),
      ),
    );
  }
}
