import 'package:flutter/material.dart';
// get current context on any where
class AppCntx{
  AppCntx._();
  static  GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();
  //my build context
  static  BuildContext get currentContext =>navigatorKey.currentState!.context;
  //over lay
  static OverlayState get overlayState =>navigatorKey.currentState!.overlay!;
}

