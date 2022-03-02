import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

/// 本Demo用于测试AppiumFlutterDriver实现UI自动化
/// 具体操作流程为：
/// 1、run当前项目到安卓/ios设备
/// 2、python执行自动化脚本，代码如下：
// # coding=utf-8
//
// import unittest
// from appium import webdriver
// from appium_flutter_finder.flutter_finder import FlutterElement, FlutterFinder
// from time import sleep
//
//
// class FlutterTest(unittest.TestCase):
//
//     def setUp(self):
//         desired_caps = {}
//         desired_caps['platformName'] = 'Android'
//         desired_caps['platformVersion'] = '11'
//         desired_caps['deviceName'] = 'Android_SDK_built_for_arm64'
//         desired_caps['appium:appPackage'] = 'com.example.flutter_auto_test_demo'
//         desired_caps['appium:appActivity'] = 'com.example.flutter_auto_test_demo.MainActivity'
//         desired_caps['appium:noReset'] = 'true'
//         desired_caps['automationName'] = 'flutter'
//         self.driver = webdriver.Remote('http://127.0.0.1:4723/wd/hub', desired_caps)
//         sleep(5)
//         self.finder = FlutterFinder()
//
//     def test_flutter(self):
//         # 点击加号按钮
//         FlutterElement(self.driver, self.finder.by_value_key("Increment")).click()
//         sleep(1)
//         FlutterElement(self.driver, self.finder.by_value_key("Increment")).click()
//         sleep(1)
//         FlutterElement(self.driver, self.finder.by_value_key("Increment")).click()
//         sleep(1)
//
//     # def tearDown(self):
//     #     self.driver.quit()
//
//
// if __name__ == '__main__':
//     unittest.main()

/// 3、执行上述代码后，可自动启动UI自动化的相关操作
///
void main() {
  // 启用扩展
  enableFlutterDriverExtension();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterAppiumDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'FlutterAppiumDemoHomePage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              key: const Key('counter'),
              style: const TextStyle(fontSize: 80),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        key: const Key('Increment'),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
