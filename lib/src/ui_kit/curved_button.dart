import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class CurvedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  final double height;
  final Color color;
  final TextStyle textStyle;
  final double radius;

  CurvedButton(
      {@required this.text,
      @required this.onPressed,
      this.width = 300,
      this.height = 48,
      this.color = bundlePurple,
      this.textStyle,
      this.radius,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 25)),
      child: Container(
        width: width,
        height: height,
        child: Material(
          color: color,
          child: InkWell(
            child: Center(
              child: Text(
                text,
                style:
                    textStyle ?? TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}
