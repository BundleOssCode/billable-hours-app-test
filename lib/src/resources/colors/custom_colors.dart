import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

const Color white = Color(0xffffffff);
const Color black = Color(0xff333333);
const Color blackSubTitle = Color(0xff8994A1);
const Color blackBold = Color(0xff252525);
const Color background = Color(0xffF2F2F2);
const Color paleGrey = Color(0xffe7e5e8);
const Color dividerColor = Color(0xffEAE8ED);
const Color darkGray = Color(0xff080808);
const Color heather = Color(0xff9189a1);
const Color darkerGray = Color(0xf8f8f8);
const Color lightGray = Color(0xffF7F7F7);
const Color gray = Color(0xffEAE9E9);
const Color darkGrey = Color.fromARGB(255, 130, 130, 130);
const Color silver = Color(0xffD8D8D8);
const Color bundlePurple = Color.fromRGBO(33, 10, 84, 1);
const Color bundleRed = Color.fromRGBO(244, 72, 72, 1);
const Color bundleGreen = Color.fromRGBO(0, 151, 99, 1);
const Color bundleLightPurple = Color.fromRGBO(72, 22, 182, 1);
const Color bundleGray = Color.fromRGBO(216, 216, 216, 1);
const Color bundleDeepGray = Color.fromRGBO(82, 82, 82, 1);
const Color bundleFocusTextFieldBorder = Color.fromRGBO(33, 10, 84, 1);
const Color bundleUnfocusTextFieldBorder = Color.fromRGBO(226, 226, 226, 1);
const Color checkBackground = Color.fromRGBO(224, 245, 238, 1);
const Color bundleBlurple = Color.fromRGBO(74, 61, 209, 1);
const Color bundleRedNoticeBackgroundColor = Color.fromRGBO(254, 241, 241, 1);

/// Random color library returns white sometimes
/// Makes it invisible and hence we use
/// Our preferred set of colors that will be visible
List<String> colorCodes = [
  "AFDBDE",
  "487BEA",
  "165DC0",
  "083663",
  "EF0E06",
  "682D27",
  "405016",
  "61538D",
  "0FFA61",
  "890EBE",
  "08363B",
  "372025",
  "341037"
];
Random rand = Random();
int getRandomColor() =>
    int.parse("0xff${colorCodes[rand.nextInt(colorCodes.length)]}");

//
//double _baseFontSize = 14;
//double _headlineFontScale = 1.3;
//double _captionFontScale = 0.9;
//double _body2FontScale = 1.1;
//String _fontFamily = 'Orkney';
//
//// ------------------------------
//// LIGHT THEME
//// ------------------------------
//final _textThemeLight = TextStyle(
//  color: black,
//  fontSize: _baseFontSize,
//);
//
//final appThemeLight = ThemeData(
//  brightness: Brightness.light,
//  primarySwatch: bundleLightPurple,
//  primaryColor: bundlePurple,
//  accentColor: AppColors.accent,
//  appBarTheme: AppBarTheme(
//    color: Colors.white,
//    iconTheme: IconThemeData(color: black),
//  ),
//  buttonColor: AppColors.primary,
//  indicatorColor: AppColors.accent,
//  fontFamily: _fontFamily,
//  primaryTextTheme: TextTheme(
//    title: _textThemeLight..copyWith(fontWeight: FontWeight.bold),
//    headline: _textThemeLight.apply(
//        color: AppColors.blackColorDarker, fontSizeFactor: _headlineFontScale),
//    caption: _textThemeLight.apply(fontSizeFactor: _captionFontScale),
//    body1: _textThemeLight,
//    body2: _textThemeLight.apply(fontSizeFactor: _body2FontScale),
//    subtitle: _textThemeLight.apply(color: heather),
//  ),
//  backgroundColor: AppColors.whiteColorDarker,
//  scaffoldBackgroundColor: AppColors.whiteColor,
//  dividerColor: AppColors.greyColor,
//  disabledColor: AppColors.greyColor,
//);
//
//// ------------------------------
//// DARK THEME
//// ------------------------------
