import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:volunteer_u/flutter_flow/flutter_flow_icon_button.dart';
import 'package:volunteer_u/flutter_flow/flutter_flow_widgets.dart';
import 'package:volunteer_u/flutter_flow/flutter_flow_theme.dart';
import 'package:volunteer_u/index.dart';
import 'package:volunteer_u/main.dart';
import 'package:volunteer_u/flutter_flow/flutter_flow_util.dart';

import 'package:volunteer_u/backend/firebase/firebase_config.dart';
import 'package:volunteer_u/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    _overrideOnError();
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
  });

  testWidgets('Login Error', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(
      entryPage: LoginWidget(),
    ));

    await tester.tap(find.byKey(ValueKey('login sign in button')));
    expect(find.byKey(ValueKey('LoginPage')), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
