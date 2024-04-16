//import 'package:test/test.dart';
import 'package:flutter/widgets.dart';
import 'package:volunteer_u/main.dart';
import 'package:volunteer_u/profile/profile_widget.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
 group('Profile Model', (){
  test( "Profile Model is not null", (){
        ProfileModel prfm = ProfileModel(); 
        expect(prfm, isNotNull);

  });

  group('Test locale', (){
    const app = MyApp();

    State<MyApp> s = app.createState();
    expect(s, isNotNull);  

  });
 });}