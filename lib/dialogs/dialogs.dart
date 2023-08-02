import 'package:flutter/material.dart';
import '../context/context.dart';
enum DialogType {dialog, bottomSheet }
showFullWidthDialog(
    {
      required Widget child,
      required DialogType type,
      bool isCancelable=true,
      BuildContext ? context,
      heightFactor = 0.5,
      double elevation=0,
    }) {
  if (type == DialogType.dialog) {
    showDialog(
      barrierDismissible: isCancelable,
      context: context??AppCntx.currentContext,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: elevation,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        child: child,
      ),
    );
  } else {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      elevation: elevation,
      context: context??AppCntx.currentContext,
      isDismissible: isCancelable,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => FractionallySizedBox(
        heightFactor: heightFactor,
        child: child,
      ),
    );
  }
}