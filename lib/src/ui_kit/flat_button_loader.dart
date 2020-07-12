import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:billable_hours_app/src/resources/sizes/size_config.dart';
import 'package:billable_hours_app/src/ui_kit/flat_button.dart';
import 'package:flutter/material.dart';

class RegistrationLoaderButton extends StatefulWidget {
  final Function buttonAction;
  final String buttonTitle;
  final double height;
  final double width;
  final bool loadingState;
  final bool isBounceButton;

  RegistrationLoaderButton({
    this.buttonAction,
    this.loadingState,
    this.buttonTitle,
    this.height,
    this.width,
    this.isBounceButton = false,
    Key key,
  }) : super(key: key);

  @override
  _RegistrationLoaderButtonState createState() =>
      _RegistrationLoaderButtonState();
}

class _RegistrationLoaderButtonState extends State<RegistrationLoaderButton> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.loadingState ? 1 : 0,
      children: <Widget>[
        widget.isBounceButton
            ? BundleBounceButton(
                width: double.infinity,
                buttonText: widget.buttonTitle,
                buttonAction: widget.buttonAction,
              )
            : RegistrationFlatButton(
                height: widget.height ?? null,
                width: widget.width ?? double.infinity,
                buttonText: widget.buttonTitle,
                buttonAction: widget.buttonAction,
                color: Colors.deepPurple,
              ),
        Center(
          child: BundleSmallProgressLoader(),
        ),
      ],
    );
  }
}

class BundleSmallProgressLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: bundlePurple.withOpacity(0.1),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(gray),
          backgroundColor: bundlePurple,
          strokeWidth: 1,
        ),
      ),
    );
  }
}

class BundleProgressLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.size80WidthScaled,
      width: SizeConfig.size80WidthScaled,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(gray),
        backgroundColor: bundlePurple,
        strokeWidth: SizeConfig.size12WidthScaled,
      ),
    );
  }
}