import 'package:billable_hours_app/src/resources/colors/custom_colors.dart';
import 'package:billable_hours_app/src/resources/sizes/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A modal bottom sheet is an alternative to a menu or a dialog and prevents
/// the user from interacting with the rest of the app.
/// This class is responsible for the [BottomSheet] callback
/// Expects [Context] of State builder and the [Child] widget to be rendered
/// Custom properties can be changed within this class.
/// [showModalBottomSheet] returns a [Future] of type [Void]
/// The builder returns type [Widget]
///
/// Usage:.
///
/// GestureDetector(
///  onTap: (){
///       BundleBottomSheet(
///          context: context,
///          child: child
///       ).bottomSheet();
///  }
/// )
///
class BundleBottomSheet {
  Widget child;
  BuildContext context;
  double containerHeight;
  bool
      isTransparent; // This allow for fullscreen bottom sheet but dynamic height of child
  bool isDismissible;

  BundleBottomSheet(
      {@required this.context,
      this.child,
      this.containerHeight,
      this.isTransparent = false,
      this.isDismissible = true})
      : assert(context != null && child != null);

  void show() {
    showModalBottomSheet<void>(
      isDismissible: isDismissible,
      backgroundColor: isTransparent
          ? Colors.transparent
          : Color(0xfff3f3f3).withOpacity(0.0),
      context: this.context,
      isScrollControlled: isDismissible,
      builder: (context) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(SizeConfig.size30HeightScaled),
              topRight: Radius.circular(SizeConfig.size30HeightScaled)),
          child: Container(
              color: isTransparent ? Colors.transparent : white,
              height: this.containerHeight ??
                  MediaQuery.of(context).size.height / 2,
              child: this.child),
        ); //
      },
    );
  }
}
