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

   /// Finds the nearest ancestor stateless widget of the specified type `T` in the widget tree.
   ///
   /// This method searches up the widget tree from the current context to find the nearest
   /// ancestor stateless widget of type `T`. If no such widget is found, it returns `null`.
   ///
   /// Example usage:
   /// ```dart
   /// MyStatelessWidget? widget = context.findStatelessWidgetInSameContext<MyStatelessWidget>();
   /// if (widget != null) {
   ///   // Do something with the widget
   /// }
   /// ```
   ///
   /// Returns:
   ///   - The nearest ancestor stateless widget of type `T`, or `null` if no such widget is found.
   T? findStatelessWidgetInSameContext<T extends Widget>() {
     return findAncestorWidgetOfExactType<T>();
   }

   /// Finds the nearest ancestor state object of the specified type `T` in the widget tree.
   ///
   /// This method searches up the widget tree from the current context to find the nearest
   /// ancestor state object of type `T`. If no such state object is found, it returns `null`.
   ///
   /// Example usage:
   /// ```dart
   /// MyState? state = context.findAncestorStateOfType<MyState>();
   /// if (state != null) {
   ///   // Do something with the state
   /// }
   /// ```
   ///
   /// Returns:
   ///   - The nearest ancestor state object of type `T`, or `null` if no such state object is found.
   T? findAncestorStateOfType<T extends State<StatefulWidget>>() {
     return this.findAncestorStateOfType<T>();
   }

}