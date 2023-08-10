import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void disableRoation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
void rotationChange(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
}


class KeyboardObserver extends WidgetsBindingObserver{

  KeyboardObserver({required this.onShow, required this.onHide});

  void Function(bool value) onShow;
  void Function(bool value) onHide;


  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    if (WidgetsBinding.instance.window.viewInsets.bottom == 0) {
      onHide(false);
    } else {
      onShow(true);
    }
  }
}