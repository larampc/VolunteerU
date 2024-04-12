import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? splitBySpace(
  String? text,
  int? wordNumber,
) {
  // split the string by space and return the numbered ask part
  if (text == null || wordNumber == null) {
    return null;
  }
  final words = text.split(' ');
  if (wordNumber <= 0 || wordNumber > words.length) {
    return null;
  }
  return words[wordNumber - 1];
}

List<String>? convertCategoriesToCurrent(
  List<String>? categories,
  String languageCode,
) {
  // this function maps the given list of categories to the current language of the app
  if (categories == null) {
    return null;
  }
  switch (languageCode) {
    case 'en':
      return categories;
    case 'pt':
      return categories.map((category) {
        switch (category) {
          case 'Nature':
            return 'Natureza';
          case 'Homeless':
            return 'Sem-abrigo';
          case 'Community':
            return 'Comunidade';
          case 'Animals':
            return 'Animais';
          case 'Elderly':
            return 'Idosos';
          default:
            return category;
        }
      }).toList();
    default:
      return categories;
  }
}

List<String>? convertCategoriesToEnglish(
  List<String>? categories,
  String? languageCode,
) {
  // this function maps the given list of categories to the current language of the app
  if (categories == null) {
    return null;
  }
  switch (languageCode) {
    case 'en':
      return categories;
    case 'pt':
      return categories.map((category) {
        switch (category) {
          case 'Natureza':
            return 'Nature';
          case 'Sem-abrigo':
            return 'Homeless';
          case 'Comunidade':
            return 'Community';
          case 'Animais':
            return 'Animals';
          case 'Idosos':
            return 'Elderly';
          default:
            return category;
        }
      }).toList();
    default:
      return categories;
  }
}
