import 'package:flutter/material.dart';

///一个失败的页面，环境都搭建不起来，无法使用
class AspectDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'AspectD Demo',
        home: new Scaffold(
          appBar: new AppBar(
            title: const Text('AspectD Demo'),
          ),
          body: new Center(
            child: new MaterialButton(
              onPressed: () {
                _testAop();
              },
              child: new Text("测试AOP"),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ));
  }

  ///用于测试aop调用
  void _testAop() {
    print('[zhuanghz] _testAop()');
  }
}
