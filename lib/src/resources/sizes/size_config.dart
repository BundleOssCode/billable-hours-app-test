import 'package:flutter/widgets.dart';

/// This class will handled the manual size configurations
/// It uses [MediaQuery] to determine the size.
/// Usage'''
///  eg.
///  Container(
///   height: SizeConfig.size8Scaled
///   )
///
class SizeConfig {
  static double screenWidth;
  static double screenHeight;
  static bool isPortrait;
  static bool isLandscape;
  static double fontScaleFactor;
  static bool maxPhoneWidth;
  static bool maxPhoneHeight;
  static bool isWiderWidth;

  static int cryptoDecimals = 8;

//  Height
  static double size8HeightScaled;
  static double size4HeightScaled;
  static double size30HeightScaled;
  static double size15HeightScaled;
  static double size10HeightScaled;
  static double size20HeightScaled;
  static double size35HeightScaled;
  static double size25HeightScaled;
  static double size50HeightScaled;
  static double size48HeightScaled;
  static double size45HeightScaled;
  static double size250HeightScaled;
  static double size65HeightScaled;
  static double size60HeightScaled;
  static double size90HeightScaled;
  static double size100HeightScaled;
  static double size200HeightScaled;
  static double size300HeightScaled;
  static double size150HeightScaled;
  static double size170HeightScaled;
  static double size175HeightScaled;

  static double size270HeightScaled;
  static double size120HeightScaled;
  static double bottomSheetMax;
  static double bottomSheetMin;
  static double actionSheet;

  static double size40HeightScaled;
  static double size70HeightScaled;

//  Width
  static double size65WidthScaled;
  static double size80WidthScaled;
  static double size12WidthScaled;
  static double size40WidthScaled;
  static double size20WidthScaled;
  static double size300WidthScaled;
  static double size335WidthScaled;
  static double size145WidthScaled;
  static double size45WidthScaled;
  static double size60WidthScaled;

  init({BuildContext context, Orientation orientation}) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    if (orientation == Orientation.portrait) {
      fontScaleFactor = screenWidth / 100;
      isPortrait = true;
      isLandscape = false;
//      Height
      size8HeightScaled = screenHeight * 0.007;
      size4HeightScaled = screenHeight * 0.0035;
      size20HeightScaled = screenHeight * 0.0245;
      size10HeightScaled = screenHeight * 0.014;
      size30HeightScaled = screenHeight * 0.035;
      size15HeightScaled = screenHeight * 0.0176;
      size25HeightScaled = screenHeight * 0.031;
      size35HeightScaled = screenHeight * 0.0385;
      size50HeightScaled = screenHeight * 0.061;
      size48HeightScaled = screenHeight * 0.0586;
      size45HeightScaled = screenHeight * 0.0516;
      size65HeightScaled = screenHeight * 0.073;
      size60HeightScaled = screenHeight * 0.070;
      size70HeightScaled = screenHeight * 0.084;
      size90HeightScaled = screenHeight * 0.108;
      size100HeightScaled = screenHeight * 0.122;
      size200HeightScaled = screenHeight * 0.244;
      size250HeightScaled = screenHeight * 0.305;
      size120HeightScaled = screenHeight * 0.132;
      size300HeightScaled = screenHeight * 0.344;
      size150HeightScaled = screenHeight * 0.172;
      size170HeightScaled = screenHeight * 0.196;
      size175HeightScaled = screenHeight * 0.204;
      size270HeightScaled = screenHeight * 0.318;
      bottomSheetMax = screenHeight * 0.92;
      bottomSheetMin = 345;
      actionSheet = screenHeight * 0.439;

      size40HeightScaled = screenHeight * 0.0461;

//      Width
      size65WidthScaled = screenWidth * 0.166;
      size80WidthScaled = screenWidth * 0.216;
      size12WidthScaled = screenWidth * 0.0327;
      size40WidthScaled = screenWidth * 0.1;
      size20WidthScaled = (screenWidth * 0.1) / 2;
      size45WidthScaled = screenWidth * 0.11;
      size300WidthScaled = screenWidth * 0.7;
      size335WidthScaled = screenWidth * 0.81;
      size145WidthScaled = screenWidth * 0.3673;
      size60WidthScaled = screenWidth * 0.1635;
      maxPhoneWidth = MediaQuery.of(context).size.width > 400;
      maxPhoneHeight = MediaQuery.of(context).size.height > 600;
      isWiderWidth = MediaQuery.of(context).size.height < 700;
    } else {
//      This will be configured differently for landscape
      fontScaleFactor = screenWidth / 50;
      isPortrait = false;
      isLandscape = true;
    }
  }
}

getHeightFromViewPort({double deviceHeight}) {
//TODO find a better way to handle these, we can leave it this way for now
  if (deviceHeight < 650) {
    return deviceHeight / 3.2;
  } else if (deviceHeight < 700) {
    return deviceHeight / 3.4;
  } else if (deviceHeight > 700 && deviceHeight < 820) {
    return deviceHeight / 3.65;
  } else if (deviceHeight > 820 && deviceHeight < 900) {
    return deviceHeight / 3.7;
  } else {
    return deviceHeight / 3.6;
  }
}
