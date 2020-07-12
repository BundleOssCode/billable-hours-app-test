import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:flutter/material.dart';

/// This class sets up [TextStyle] for Entire application
/// For uniformity. The name is prefixed with ts, which is an abbreviation
/// of [TextStyle], followed by the [FontSize] with the [FontStyle]
/// type as the trailing identifier. Eg. ts_20_bold
/// They are static fields and hence could be called without instantiation
/// of class eg. style: BundleTextStyle.ts_16_normal
class BundleTextStyle {
  static const TextStyle ts_16_normal = TextStyle(
    fontFamily: "Inter",
    color: black,
    fontSize: 16,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_16_subTitle = TextStyle(
    fontFamily: "Inter",
    color: blackSubTitle,
    fontSize: 16,
    height: 1.4,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_16_bold = TextStyle(
    fontFamily: "Inter",
    color: black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_16_bold_white = TextStyle(
    fontFamily: "Inter",
    color: white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_26_bold = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
    fontFamily: "Inter",
    fontSize: 26,
    color: black,
  );
  static const TextStyle ts_12_normal = TextStyle(
    fontSize: 12,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_12_subTitle = TextStyle(
    fontSize: 12,
    fontFamily: "Inter",
    color: blackSubTitle,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_14_subTitle = TextStyle(
    fontSize: 14,
    fontFamily: "Inter",
    color: blackSubTitle,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_18_bold = TextStyle(
    fontSize: 18,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_14_bold = TextStyle(
    fontSize: 14,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle ts_14_normal = TextStyle(
    fontSize: 14,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_14_normal_bold = TextStyle(
    fontSize: 14,
    fontFamily: "Inter",
    color: Color(0xff252525),
    fontWeight: FontWeight.w400,
  );

  static const TextStyle ts_32_normal = TextStyle(
    fontSize: 32,
    fontFamily: "Inter",
    color: blackBold,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_16_normal_white = TextStyle(
    fontFamily: "Inter",
    color: white,
    fontSize: 16,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_32_bold = TextStyle(
    fontSize: 32,
    fontFamily: "Inter",
    color: blackBold,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle ts_32_bold_subtitle = TextStyle(
    fontSize: 32,
    fontFamily: "Inter",
    color: blackSubTitle,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle ts_60_semi_bold_white = TextStyle(
    fontSize: 60,
    fontFamily: "Inter",
    color: white,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle ts_60_semi_bold_black = TextStyle(
    fontSize: 60,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle ts_60_semi_bold_heather = TextStyle(
    fontSize: 60,
    fontFamily: "Inter",
    color: blackSubTitle,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle ts_65_semi_bold_heather = TextStyle(
    fontSize: 65,
    fontFamily: "Inter",
    color: blackSubTitle,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle ts_65_semi_bold_black = TextStyle(
    fontSize: 65,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle ts_50_semi_bold_black = TextStyle(
    fontSize: 50,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle ts_24_light_white = TextStyle(
    fontFamily: "Inter",
    color: white,
    fontSize: 24,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle ts_24_light_black = TextStyle(
    fontFamily: "Inter",
    color: black,
    fontSize: 24,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle ts_16_semi_bold_white = TextStyle(
    fontFamily: "Inter",
    color: white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_16_bold_cod_black = TextStyle(
    fontFamily: "Inter",
    color: darkGray,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_16_bold_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundleLightPurple,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_16_normal_cod_black = TextStyle(
    fontFamily: "Inter",
    color: darkGray,
    fontSize: 16,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_10_normal_heather = TextStyle(
    fontFamily: "Inter",
    color: heather,
    fontSize: 10,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_35_bold = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
    fontFamily: "Inter",
    fontSize: 35,
    color: black,
  );

  static const TextStyle ts_18_normal = TextStyle(
    fontSize: 18,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_13_bold = TextStyle(
    fontSize: 13,
    fontFamily: "Inter",
    color: black,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_16_normal_ = TextStyle(
    fontFamily: "Inter",
    color: black,
    fontSize: 16,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_16_semi_bold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const TextStyle ts_16_semi_bold_black = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle ts_20_bold_medium = TextStyle(
    fontFamily: "Inter",
    color: Color(0xff252525),
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  static const TextStyle ts_20_normal = TextStyle(
    fontFamily: "Inter",
    color: Color(0xff252525),
    fontStyle: FontStyle.normal,
    fontSize: 20,
  );

  static const TextStyle ts_20_normal_bold = TextStyle(
    fontFamily: "Inter",
    color: Color(0xff252525),
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  static const TextStyle ts_16_regular_bold = TextStyle(
    fontFamily: "Inter",
    color: Color(0xff333333),
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static const TextStyle ts_32_extra_bold = TextStyle(
    fontFamily: "Inter",
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: Color(0xff333333),
  );

  static const TextStyle ts_28_bold = TextStyle(
    fontFamily: "Inter",
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: Color(0xff333333),
  );

  static const TextStyle ts_28_extra_bold = TextStyle(
    fontFamily: "Inter",
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: Color(0xff333333),
  );

  static const TextStyle ts_22_bold = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
    fontFamily: "Inter",
    fontSize: 22,
    color: black,
  );

  static const TextStyle ts_12_normal_heather = TextStyle(
    fontFamily: "Inter",
    color: heather,
    fontSize: 12,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_12_bold_heather = TextStyle(
    fontFamily: "Inter",
    color: heather,
    fontSize: 12,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_12_bold_subtitle = TextStyle(
    fontFamily: "Inter",
    color: blackSubTitle,
    fontSize: 12,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_15_normal_bold = TextStyle(
    fontFamily: "Inter",
    color: Color(0xff252525),
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  static const TextStyle ts_12_bold_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundleLightPurple,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_12_normal_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundleLightPurple,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_12_normal_deep_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundlePurple,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_13_normal_deep_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundlePurple,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_12_bold_deep_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundleLightPurple,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle ts_24_bold_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundleLightPurple,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_14_bold_bundle_purple = TextStyle(
    fontFamily: "Inter",
    color: bundleLightPurple,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_24_normal_cod_black = TextStyle(
    fontFamily: "Inter",
    color: darkGray,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_16_cod_black = TextStyle(
    fontFamily: "Inter",
    color: Color(0xff252525),
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle ts_17_emerald_normal = TextStyle(
    fontFamily: "Inter",
    color: bundleGreen,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle ts_error_style = TextStyle(
    fontSize: 14,
    color: Color(0xffe02020),
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_17_error = TextStyle(
    fontFamily: "Inter",
    color: Color(0xffe02020),
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle ts_16_green = TextStyle(
    fontFamily: "Inter",
    color: bundleGreen,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle ts_14_red = TextStyle(
    fontFamily: "Inter",
    color: Color(0xffe02020),
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const TextStyle ts_12_emerald = TextStyle(
    fontFamily: "Inter",
    color: bundleGreen,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static const TextStyle ts_12_warning = TextStyle(
    fontSize: 14,
    color: Colors.orange,
    height: 1.4,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_12_bold_warning = TextStyle(
    fontSize: 12,
    color: Colors.orange,
    height: 1.4,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_14_warning = TextStyle(
    fontSize: 14,
    color: Colors.orange,
    height: 1.4,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_13_warning_orange = TextStyle(
    fontSize: 13,
    color: Colors.orange,
    height: 1.4,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_13_warning_red = TextStyle(
    fontSize: 13,
    color: Colors.red,
    height: 1.4,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_14_warning_red = TextStyle(
    fontSize: 14,
    color: Colors.red,
    height: 1.4,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_14_bold_warning = TextStyle(
    fontSize: 14,
    color: Colors.orange,
    height: 1.4,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_13_bold_warning = TextStyle(
    fontSize: 13,
    color: Colors.orange,
    height: 1.4,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_18_bold_purple = TextStyle(
    fontSize: 18,
    fontFamily: "Inter",
    color: bundlePurple,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle ts_14_normal_with_height = TextStyle(
    fontSize: 14,
    fontFamily: "Inter",
    color: black,
    height: 1.4,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle ts_14_normal_bundlePurple = TextStyle(
    fontSize: 14,
    fontFamily: "Inter",
    color: bundlePurple,
    fontWeight: FontWeight.normal,
  );

  static List<OutlineInputBorder> bundleTextFieldBorder() => [
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: bundleUnfocusTextFieldBorder,
            width: 1.4,
            style: BorderStyle.solid,
          ),
        ),
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: bundleFocusTextFieldBorder,
            width: 1.4,
            style: BorderStyle.solid,
          ),
        )
      ];
}
