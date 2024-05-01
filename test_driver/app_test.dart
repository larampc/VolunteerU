import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/test_steps.dart';

Future<void> main() async {
  final config = FlutterTestConfiguration()
  ..features = [Glob(r'test_driver/features/forgotPassword.feature')]
  ..reporters = [
    ProgressReporter(),
    TestRunSummaryReporter(),
    JsonReporter(path: './test_report.json')]
  ..stepDefinitions = [GivenPage()]
    ..restartAppBetweenScenarios = true
  ..targetAppPath = "test_driver/app.dart";
  return GherkinRunner().execute(config);
}

