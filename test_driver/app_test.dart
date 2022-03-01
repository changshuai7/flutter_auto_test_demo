import 'dart:io';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('计数器测试', () {
    final counterTextFinder = find.byValueKey('counter');
    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      sleep(const Duration(seconds: 2));
    });

    tearDownAll(() async {
      // driver?.close();
    });

    // 第一条用例
    test('starts at 1', () async {
     expect(await driver?.getText(counterTextFinder), "0");
    });

    // 第二条用例
    test('increments the counter', () async {
      driver?.tap(find.byTooltip("Increment"));
      expect(await driver?.getText(counterTextFinder), "1");
    });
    test('increments the counter', () async {
      driver?.tap(find.byTooltip("Increment"));
      expect(await driver?.getText(counterTextFinder), "2");
    });
    test('increments the counter', () async {
      driver?.tap(find.byTooltip("Increment"));
      expect(await driver?.getText(counterTextFinder), "3");
    });
    test('increments the counter', () async {
      driver?.tap(find.byTooltip("Increment"));
      expect(await driver?.getText(counterTextFinder), "4");
    });
    test('increments the counter', () async {
      driver?.tap(find.byTooltip("Increment"));
      expect(await driver?.getText(counterTextFinder), "5");
    });
  });
}
