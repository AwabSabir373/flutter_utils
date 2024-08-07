import 'package:flutter/material.dart';

extension ContextExtenshions on BuildContext{

  //Get theme data from context
   ThemeData get theme => Theme.of(this);

   //Get text theme from context
    TextTheme get textTheme => theme.textTheme;

    //Get Color Scheme from context
    ColorScheme get colorScheme => theme.colorScheme;

    //Get Size from context
    Size get size => MediaQuery.of(this).size;

}