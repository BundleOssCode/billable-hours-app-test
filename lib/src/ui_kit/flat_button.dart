import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class RegistrationFlatButton extends StatelessWidget {
  final String buttonText;
  final Function buttonAction;
  final double width;
  final double height;
  final Color color;
  final Color textColor;
  RegistrationFlatButton(
      {@required this.buttonText,
      @required this.buttonAction,
      this.height,
      this.width,
      this.color,
      this.textColor = Colors.white})
      : assert(buttonAction != null, buttonText != null);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      child: Container(
        width: width ?? 300,
        height: height ?? 48,
        decoration: BoxDecoration(
          color: color ?? bundlePurple,
        ),
        child: Material(
          color: color ?? bundlePurple,
          child: InkWell(
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor ?? white, fontSize: 16),
              ),
            ),
            onTap: buttonAction,
          ),
        ),
      ),
    );
  }
}

class BundleBounceButton extends StatefulWidget {
  final String buttonText;
  final Function buttonAction;
  final double width;
  final double height;
  final Color color;

  BundleBounceButton(
      {this.buttonAction,
      this.buttonText,
      this.color,
      this.height,
      this.width});
  @override
  _BundleBounceButtonState createState() => _BundleBounceButtonState();
}

class _BundleBounceButtonState extends State<BundleBounceButton>
    with SingleTickerProviderStateMixin {
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 10,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTap: widget.buttonAction,
      child: Transform.scale(
        scale: _scale,
        child: _animatedButtonUI,
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
        width: widget.width ?? 300,
        height: widget.height ?? 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                bundlePurple,
                Color(0xFF0D1DB4),
              ],
            )),
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
