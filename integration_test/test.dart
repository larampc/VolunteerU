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

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('login sign in button')));
    await tester.pumpAndSettle();
    expect(find.text('Email is required'), findsOneWidget);
    expect(find.text('Password is required'), findsOneWidget);
    expect(find.byKey(ValueKey('LoginPage')), findsWidgets);
  });

  testWidgets('Forgot Password button', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(
      entryPage: LoginWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('forgotPassword')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('resetPassword')), findsWidgets);
  });

  testWidgets('Reset Password ', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(
      entryPage: LoginWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('forgotPassword')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('resetPassword')));
    await tester.pumpAndSettle();
    expect(find.text('Email is required'), findsOneWidget);
  });

  testWidgets('Login Success', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(
      entryPage: LoginWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(ValueKey('loginEmail')), 'test9@gmail.com');
    await tester.enterText(find.byKey(ValueKey('loginPassword')), 'testtt');
    await tester.tap(find.byKey(ValueKey('login sign in button')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('MainPage')), findsWidgets);
  });

  testWidgets('Open Event Details', (WidgetTester tester) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'test9@gmail.com', password: 'testtt');
    await tester.pumpWidget(MyApp(
      entryPage: MainPageWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('eventCard')).first);
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('eventPage')), findsWidgets);
  });

  testWidgets('Edit Profile', (WidgetTester tester) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'test9@gmail.com', password: 'testtt');
    await tester.pumpWidget(MyApp(
      entryPage: ProfileWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('editProfile')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('editProfilePage')), findsWidgets);
  });

  testWidgets('Edit Events', (WidgetTester tester) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'test9@gmail.com', password: 'testtt');
    await tester.pumpWidget(MyApp(
      entryPage: MyEventsWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.edit_calendar));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('eventCard')).first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('editEventButton')).first);
    await tester.pumpAndSettle();
    expect(find.text('Fill out the information below to change your volunteering initiative'), findsWidgets);
  });

  testWidgets('Check participants ', (WidgetTester tester) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'test9@gmail.com', password: 'testtt');
    await tester.pumpWidget(MyApp(
      entryPage: MyEventsWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.edit_calendar));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('eventCard')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Check participants'));
    await tester.pumpAndSettle();
    expect(find.text('Total of participants'), findsWidgets);
  });

  testWidgets('Check User Page', (WidgetTester tester) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'test9@gmail.com', password: 'testtt');
    await tester.pumpWidget(MyApp(
      entryPage: MainPageWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('eventCard')).first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('Stack_ik57')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('userPage')), findsWidgets);
  });

  testWidgets('Filter Events', (WidgetTester tester) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'test9@gmail.com', password: 'testtt');
    await tester.pumpWidget(MyApp(
      entryPage: MainPageWidget(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('filters')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Nature'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('eventCard')).first);
    await tester.pumpAndSettle();
    expect(find.text('Nature'), findsWidgets);
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
