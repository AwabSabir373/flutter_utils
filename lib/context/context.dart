import 'package:flutter/material.dart';
// get current context on any where
class AppCntx{
  AppCntx._();
  static  GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();
  //my build context

  static  BuildContext get currentContext {
    BuildContext ? context;
    if
    (navigatorKey.currentContext == null) {
      throw _BindError();
    } else {
      context= navigatorKey.currentContext!;
    }
    return context;
  }
  //over lay
  static OverlayState get overlayState =>navigatorKey.currentState!.overlay!;
}



class _BindError extends Error {
  /// The type of the class the user tried to retrieve
  /// Creates a [BindError]
  _BindError();

  @override
  String toString() {
    return 'Please Add this Line in your Material App \nnavigatorKey: AppCntx.navigatorKey';
  }
}

