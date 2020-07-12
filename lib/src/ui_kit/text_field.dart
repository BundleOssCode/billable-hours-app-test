import 'package:billable_hours_app/src/resources/styles/custom_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BundleTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextEditingController controller;
  final double textSize;
  final int maxLine;
  final int maxLength;
  final double borderWidth;
  final Widget inputIcon;
  final Widget suffixIcon;
  final bool enabled;
  final FocusNode focusNode;
  final String prefixText;
  final String hint;
  final bool hasFocus;
  final bool showLength;
  final hasLabel;
  final bool obscureText;
  final List<TextInputFormatter> inputFormatter;

  BundleTextField(
      {Key key,
      this.label,
      this.hasLabel = true,
      @required this.controller,
      this.inputIcon,
      this.suffixIcon,
      this.prefixText,
      this.focusNode,
      this.inputType = TextInputType.text,
      this.maxLine = 1,
      this.maxLength,
      this.borderWidth = 1.0,
      this.textSize = 16.0,
      this.enabled = true,
      this.showLength = true,
      this.hint,
      this.hasFocus = false,
      this.obscureText = false,
      this.inputFormatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var labelTextColor = Color(0xFF8994A1);
    var inputTextColor = Color(0xFF252525);
    return Column(
      children: <Widget>[
        hasLabel
            ? Container(
                padding: EdgeInsets.fromLTRB(0, 8, 8, 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  label ?? "",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: textSize, color: labelTextColor),
                ),
              )
            : Container(),
        Container(
          height: maxLength == null ? 45 : 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: TextFormField(
            focusNode: focusNode,
            maxLines: maxLine,
            enabled: enabled,
            maxLength: maxLength,
            controller: controller,
            autofocus: hasFocus,
            obscureText: obscureText,
            style: TextStyle(color: inputTextColor, fontSize: textSize),
            keyboardType: inputType,
            inputFormatters: inputFormatter,
            decoration: InputDecoration(
                prefixText: prefixText,
                counter: showLength ? null : SizedBox(),
                counterStyle:
                    showLength ? null : TextStyle(color: Colors.transparent),
                hintText: hint ?? "",
                hintStyle: TextStyle(fontSize: 16, color: labelTextColor),
                prefixIcon: inputIcon,
                suffixIcon: suffixIcon,
                contentPadding: EdgeInsets.all(14),
                disabledBorder: BundleTextStyle.bundleTextFieldBorder()[0],
                enabledBorder: BundleTextStyle.bundleTextFieldBorder()[0],
                focusedBorder: BundleTextStyle.bundleTextFieldBorder()[1]),
          ),
        )
      ],
    );
  }
}
