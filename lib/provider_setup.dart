import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:demo/provider/global_provider.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
];

List<SingleChildWidget> independentServices = [
  Provider(create: (_) => GolbalProvider()),
];

List<SingleChildWidget> dependentServices = [
  //这里使用ProxyProvider来定义需要依赖其他Provider的服务

];