import 'package:demo/widget/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Permission Handler Demo',
        home: new Scaffold(
            appBar: DefaultAppBar(title: '权限申请页面').build(context),
            body: new Center(
              child: Column(
                children: <Widget>[
                  new MaterialButton(
                    onPressed: () {
                      _requestSinglePermission();
                    },
                    child: new Text("申请单个权限"),
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  new MaterialButton(
                    onPressed: () {
                      _requestListPermission();
                    },
                    child: new Text("申请多个权限"),
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                ],
              ),
            )));
  }

  ///请求单个权限
  _requestSinglePermission() async {
    bool status = await Permission.storage.request().isGranted;
    print('status : $status');
  }

  ///申请多个权限
  _requestListPermission() async {
    List<Permission> list = new List();
    list.add(Permission.storage);
    list.add(Permission.camera);
    await list.request().then((map) => {
          map.forEach((key, value) {
            print('$key : ${map[key].isGranted}');
          })
        });
  }
}
