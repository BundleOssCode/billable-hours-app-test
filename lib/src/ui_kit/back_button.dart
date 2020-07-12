import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class BundleBackButton extends StatelessWidget {
  final Function onBackPressed;
  BundleBackButton({this.onBackPressed});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 35,
        height: 35,
        color: bundlePurple.withOpacity(0.1),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onBackPressed,
            child: Image.asset(
              "assets/drawables/arrow.png",
              color: bundlePurple,
              height: 24,
              width: 24,
            ),
          ),
        ),
      ),
    );
  }
}
