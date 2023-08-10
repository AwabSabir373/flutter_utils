import 'package:flutter/cupertino.dart';
class SweetButton extends StatelessWidget {
  const SweetButton({Key? key, required this.child, required this.onPressed}) : super(key: key);
  final Widget child;
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