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
          case 'Animal Rescue':
            return 'Resgate Animal';
          case 'Homeless':
            return 'Sem-abrigo';
          case 'Community':
            return 'Comunidade';
          case 'Animals':
            return 'Animais';
          case 'Elderly':
            return 'Idosos';
          case 'Beach Cleanup':
            return 'Limpeza de Praia';
          case 'Cloth Donation':
            return 'Doação de Roupa';
          case 'Cultural':
            return 'Cultura';
          case 'Donation':
            return 'Doação';
          case 'Education':
            return 'Educação';
          case 'Elderly Visit':
            return 'Visita a Idosos';
          case 'Environment':
            return 'Ambiente';
          case 'Food Distribution':
            return 'Distribuição de Comida';
          case 'Health':
            return 'Saúde';
          case 'Sport':
            return 'Desporto';
          case 'Transportation':
            return 'Transporte';
          case 'Tree Planting':
            return 'Plantação de Árvores';
          case 'Wildlife Conservation':
            return 'Conservação da Vida Selvagem';
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
          case 'Resgate Animal':
            return 'Animal Rescue';
          case 'Sem-abrigo':
            return 'Homeless';
          case 'Comunidade':
            return 'Community';
          case 'Animais':
            return 'Animals';
          case 'Idosos':
            return 'Elderly';
          case 'Limpeza de Praia':
            return 'Beach Cleanup';
          case 'Doação de Roupa':
            return 'Cloth Donation';
          case 'Cultura':
            return 'Cultural';
          case 'Doação':
            return 'Donation';
          case 'Educação':
            return 'Education';
          case 'Visita a Idosos':
            return 'Elderly Visit';
          case 'Ambiente':
            return 'Environment';
          case 'Distribuição de Comida':
            return 'Food Distribution';
          case 'Saúde':
            return 'Health';
          case 'Desporto':
            return 'Sport';
          case 'Transporte':
            return 'Transportation';
          case 'Plantação de Árvores':
            return 'Tree Planting';
          case 'Conservação da Vida Selvagem':
            return 'Wildlife Conservation';
          default:
            return category;
        }
      }).toList();
    default:
      return categories;
  }
}
