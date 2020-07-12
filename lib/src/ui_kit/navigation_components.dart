import 'package:billable_hours_app/src/core/key_access.dart';
import 'package:billable_hours_app/src/ui_kit/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBack extends StatelessWidget {
  final Function onBackPressed;

  const NavBack({Key key, this.onBackPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BundleBackButton(onBackPressed: onBackPressed ?? jumpBack);
  }

  jumpBack() => Navigator.pop(GlobalKeyAccess.scaffoldKey.currentContext);
}

class NavUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset("assets/drawables/nav_up.png"),
      height: 4,
      width: 35,
    );
  }
}