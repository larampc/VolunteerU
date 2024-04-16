import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


StepDefinitionGeneric GivenPage() {
  return given1<String, FlutterWorld>(
    'I am on the {string}',
        (page, context) async {
      final locator =find.byValueKey(page);
      FlutterDriverUtils.isPresent(context.world.driver, locator);
    },
  );
}

class CheckPage
    extends Given1WithWorld<String, FlutterWorld> {

  @override
  Future<void> executeStep(String key) async{
    final page = find.byValueKey(key);

    bool isPage = await FlutterDriverUtils.isPresent(world.driver, page);
    sleep(const Duration(seconds: 10));
  }

  @override
  RegExp get pattern => RegExp(r"I am on the {string}");
}

class ClickButton extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String loginbtn) async {
    print("tap");

    final loginfinder = find.byValueKey(loginbtn);
    await FlutterDriverUtils.tap(world.driver, loginfinder);
  }

  @override
  RegExp get pattern => RegExp(r"I tap the {string} button");
}

class CheckIfPageIsPresent extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    final homefinder = find.byValueKey(input1);
    bool isPresent = await FlutterDriverUtils.isPresent(world.driver, homefinder);
    expect(isPresent, true);
  }

  @override
  RegExp get pattern => RegExp("I have {string} on screen");
}