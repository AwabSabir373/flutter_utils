import 'package:flutter/cupertino.dart';
class SweetButton extends StatelessWidget {
  const SweetButton({super.key, required this.child, required this.onPressed});
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