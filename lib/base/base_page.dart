import 'package:demo/base/state/empty_state_controller.dart';
import 'package:demo/base/state/state_view.dart';
import 'package:demo/widget/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'base_view_model.dart';

///基础页面
abstract class BasePageView<T extends BaseViewModel> extends StatelessWidget {
  ///viewModel
  T viewModel;

  BasePageView() {
    viewModel = createViewModel();
  }

  ///设置布局
  Widget setContentView(BuildContext context);

  ///创建viewModel
  T createViewModel();

  ///是否需要标题栏
  bool isNeedToolbar();

  @override
  Widget build(BuildContext context) {
    viewModel.isNeedToolbar(isNeedToolbar());
    return ChangeNotifierProvider(
        create: (context) => viewModel,
        child: Consumer<T>(builder: (context, model, child) {
          return MaterialApp(
              home: Scaffold(
            appBar: viewModel.needToolBar
                ? DefaultAppBar(
                        title: viewModel.appTitle,
                        appbarColor: viewModel.appbarColor)
                    .build(context)
                : null,
            body: _cretaeEmptyState(context, viewModel.state),
          ));
        }));
  }

  Widget _cretaeEmptyState(BuildContext context, EmptyState state) {
    switch (state) {
      case EmptyState.normal:
        return setContentView(context);
      case EmptyState.netError:
        return StateNetErrorView();
      case EmptyState.loading:
        return StateLoadingView();
    }
    return setContentView(context);
  }
}
