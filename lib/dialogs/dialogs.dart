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
    var userMaterial3 = Theme.of(AppCntx.currentContext).useMaterial3;
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context??AppCntx.currentContext,
      isDismissible: isCancelable,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => FractionallySizedBox(
        heightFactor: heightFactor,
        child: userMaterial3? _material3sheet(child, elevation): child,
      ),
    );
  }
}

Widget _material3sheet(Widget child, double elevation){
  var colorScheme = Theme.of(AppCntx.currentContext).colorScheme;
  return Material(
    color: colorScheme.surface,
    shadowColor: colorScheme.onSurface,
    surfaceTintColor: colorScheme.onSurface,
    elevation: elevation,
    child: child,
  );
}