import 'package:flutter/material.dart';

import '../context/context.dart';

extension MySizeBox on num{
  Widget get heightBox => SizedBox(height: toDouble());
  Widget get widthBox => SizedBox(width: toDouble());
}

extension MySizeBoxInt on int{
  Widget get heightBox => SizedBox(height: toDouble());
  Widget get widthBox => SizedBox(width: toDouble());
}

extension MySizeBoxDouble on double{
  Widget get heightBox => SizedBox(height: this);
  Widget get widthBox => SizedBox(width: this);
}

//------------------ Responsive ------------------
extension MyResponsive on num{
  double get responsiveHeight => (MediaQuery.of(AppCntx.currentContext).size.height * (this/100));
  double get responsiveWidth => (MediaQuery.of(AppCntx.currentContext).size.width * (this/100));
  Widget get hp => SizedBox(height: responsiveHeight);
  Widget get wp => SizedBox(width: responsiveWidth);
}