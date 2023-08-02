import 'package:flutter/cupertino.dart';
class SweetButton extends StatelessWidget {
  SweetButton({Key? key, required this.child, required this.onPressed}) : super(key: key);
  Widget child;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: child,
    );
  }
}