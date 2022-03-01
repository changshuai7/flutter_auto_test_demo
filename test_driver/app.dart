// 导入扩展
import 'package:flutter_driver/driver_extension.dart';
// 导入main入口文件
import 'package:flutter_auto_test_demo/main.dart' as app;

void main() {
  // 启用扩展
  enableFlutterDriverExtension();

  app.main();
}