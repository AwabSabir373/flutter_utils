<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This package is contains basic methods for working with the [Dart](https://dart.dev/) language.
that are daily usage while developing a project.

## Features

It contains a lot of methods that are daily usage while developing a project.
like display dialogs & bottom sheets, check the value is null or not, Date Operations and formation
It also helps you to reduce the code and make it more readable.

## Usage

This package is very easy to use. You can use it by adding the following code to your project.
to `lib/main` folder.
* Set up the package in your MaterialApp add the following code to your `lib/main` folder.

```dart
const 
MaterialApp(
navigatorKey: AppCntx.navigatorKey,
home: Home(),
);
```
* display Dialogs & Bottom Sheets
* If you want display bottom sheet you can set just type as DialogType.bottomSheet
```dart
showFullWidthDialog(
       child : "any widget",
      type : DialogType.dialog,
      isCancelable: "click outside of the dialog to close",
      context : "pass context if you don't pass the context"
         " add your MaterialApp navigator key mentioned above",
      heightFactor : "height of the bottom sheet",
      elevation : "elevation of the bottom sheet",
    ); 
```
* check the value is null or not
```dart
isNotEmpty(dynamic value);
```
* Date Operations and formation
```dart
stringToDate("25/9/2023", DateFormates.YYYY_MM_DD);
convertTime24Formate("time");
```
* validate your form
* you can validate your form by using the following code
```dart
class anyName with ValidationMixn{
  TextFormField(
    validator: (value) => validateEmail(value),
  );
  TextFormField(
  validator: validatePassword,
  );
}
```
* Give heigh and with of the widget
* hp is for height percentage
* wp is for width percentage
* heightBox is for height
```dart
   20.heightBox
   10.widthBox
   5.hp
```
* Read Logs 
* you can read logs by using the following code
```dart
  logMessage("your message");
```
* Make your any widget Click able with the following code & give Beautiful animation
```dart
  SweetButton(
     onPressed: () { },
      child: "Widget"
   )
```
## Additional information
This package is still under development. 
If you have any suggestions or issues please raise them on [GitHub](https://github.com/AwabSabir373/flutter_utils/issues).
Also, if you want to contribute to this package please feel free to fork this repository and contribute.
And if you like this package please give it a star.

