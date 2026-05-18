<div align="center">

<img src="https://raw.githubusercontent.com/AwabSabir373/flutter_utils/main/assets/logo.png" width="100" alt="flutter_utilsx logo" />

# flutter_utilsx

**A powerful Flutter utility package — less code, more productivity.**

[![pub version](https://img.shields.io/pub/v/flutter_utilsx.svg?style=flat-square&color=0175C2&label=pub)](https://pub.dev/packages/flutter_utilsx)
[![GitHub](https://img.shields.io/badge/GitHub-AwabSabir373-181717?style=flat-square&logo=github)](https://github.com/AwabSabir373/flutter_utils)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)
[![Flutter](https://img.shields.io/badge/Flutter-%E2%9D%A4-02569B?style=flat-square&logo=flutter)](https://flutter.dev)

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-%E2%98%95-FFDD00?style=flat-square&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/awabsabir)

</div>

---

## ✨ Overview

`flutter_utilsx` is a collection of daily-use Flutter utilities that reduce boilerplate and keep your code clean. It covers:

- 🎨 **Animated Top Snack Bar** — glassmorphism snackbar with smooth slide & fade (no external animation package needed)
- 📦 **Dialogs & Bottom Sheets** — show/close dialogs with one line
- 📏 **Responsive Size Extensions** — `hp`, `wp`, `heightBox`, `widthBox`
- ✅ **Validation Mixin** — email, password, and more
- 📅 **Date Utilities** — format, convert, parse dates easily
- 🔍 **Context Extensions** — theme, size, colorScheme, textTheme
- 🔘 **SweetButton** — animated, tactile button widget
- 🪵 **Logger** — clean debug logging

---

## 🚀 Setup

Add the navigator key to your `MaterialApp` so context-free utilities work:

```dart
MaterialApp(
  navigatorKey: AppCntx.navigatorKey,
  home: MyHomePage(),
);
```

---

## 🔔 Animated Top Snack Bar

A **zero-dependency**, performance-first top snackbar with glassmorphism design.
Uses Flutter's native `SlideTransition` + `FadeTransition` — no third-party animation package required.

### Animation behavior
- Slides down with `Curves.easeOutBack` (springy feel)
- Fades in simultaneously
- Stays visible for **2 seconds**
- Slides back up with `Curves.easeIn` + fades out

### Show a **Success** Snackbar

```dart
showDialog(
  context: context,
  barrierColor: Colors.transparent,
  barrierDismissible: false,
  builder: (_) => Stack(
    children: [
      AnimatedTopSnackBar(
        message: 'Profile updated successfully!',
        isError: false,
      ),
    ],
  ),
);
```

### Show an **Error** Snackbar

```dart
showDialog(
  context: context,
  barrierColor: Colors.transparent,
  barrierDismissible: false,
  builder: (_) => Stack(
    children: [
      AnimatedTopSnackBar(
        message: 'Something went wrong. Please try again.',
        isError: true,
      ),
    ],
  ),
);
```

### Helper function (recommended)

Wrap the call in a reusable helper so you can call it anywhere:

```dart
void showTopSnackBar(BuildContext context, {
  required String message,
  required bool isError,
}) {
  showDialog(
    context: context,
    barrierColor: Colors.transparent,
    barrierDismissible: false,
    builder: (_) => Stack(
      children: [
        AnimatedTopSnackBar(
          message: message,
          isError: isError,
        ),
      ],
    ),
  );
}
```

```dart
// Success
showTopSnackBar(context, message: 'Saved!', isError: false);

// Error
showTopSnackBar(context, message: 'Failed to save.', isError: true);
```

### Without `context` (context-free, using `AppCntx`)

```dart
showDialog(
  context: AppCntx.currentContext,
  barrierColor: Colors.transparent,
  barrierDismissible: false,
  builder: (_) => Stack(
    children: [
      AnimatedTopSnackBar(
        message: 'Operation completed!',
        isError: false,
      ),
    ],
  ),
);
```

### Parameters

| Parameter | Type     | Required | Description                                   |
|-----------|----------|----------|-----------------------------------------------|
| `message` | `String` | ✅        | The text to display in the snackbar           |
| `isError` | `bool`   | ✅        | `true` = error (❌ icon), `false` = success (✅ icon) |

---

## 📦 Dialogs & Bottom Sheets

### Setup

```dart
MaterialApp(
  navigatorKey: AppCntx.navigatorKey,
  home: MyHomePage(),
);
```

### Show a Dialog

```dart
Dialogs.showDialogX(
  child: MyCustomWidget(),
  isCancelable: true,      // tap outside to dismiss (default: true)
  context: context,        // optional — uses AppCntx if omitted
);
```

### Check if Dialog is Open

```dart
bool isOpen = Dialogs.isDialogOpen;
```

### Close a Dialog

```dart
Dialogs.closeDialog();
```

### Show a Bottom Sheet

```dart
Dialogs.showBottomSheet(
  child: MyCustomWidget(),
  isCancelable: true,        // default: true
  heightFactor: 0.6,         // fraction of screen height (default: 0.5)
  elevation: 4,
  showDragHandel: true,
  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
  context: context,          // optional
);
```

---

## 📏 Responsive Size Extensions

```dart
// Height percentage of screen
5.hp   // 5% of screen height

// Width percentage of screen
10.wp  // 10% of screen width

// SizedBox helpers
20.heightBox   // SizedBox(height: 20)
10.widthBox    // SizedBox(width: 10)
```

---

## ✅ Validation Mixin

```dart
class MyFormState extends State<MyForm> with ValidationMixn {
  // ...
  TextFormField(
    validator: (value) => validateEmail(value),
  );

  TextFormField(
    validator: validatePassword,
  );
}
```

---

## 📅 Date Utilities

```dart
// Parse string to DateTime
stringToDate('25/9/2023', DateFormates.YYYY_MM_DD);

// Convert to 24h time format
convertTime24Formate('3:30 PM');

// Get date with full month name e.g. "23-September-2021"
getDateByName(DateTime.now());
stringToDateByName('25-September-2021');

// Time elapsed between two dates (in minutes)
calculateTimeDelayInMinutes(
  start: DateTime.now(),
  end: DateTime.now().add(Duration(minutes: 30)),
);

// Get current date
currentDate;
```

---

## 🔍 Context Extensions

```dart
context.theme;        // ThemeData
context.size;         // Size (screen size)
context.textTheme;    // TextTheme
context.colorScheme;  // ColorScheme
```

### Find Widgets in Context

```dart
// Find a StatelessWidget in the same parent context
MyStatelessWidget? widget = context.findStatelessWidgetInSameContext<MyStatelessWidget>();
if (widget != null) {
  // use widget
}

// Find a StatefulWidget's State in ancestor context
MyState? state = context.findAncestorStateOfType<MyState>();
if (state != null) {
  // use state
}
```

---

## 🔘 SweetButton

An animated, tactile button with a satisfying press effect:

```dart
SweetButton(
  onPressed: () {
    // your action
  },
  child: Text('Press Me'),
);
```

---

## 🪵 Logger

```dart
logMessage('Your debug message here');
```

---

## 🔢 Null / Empty Check

```dart
isNotEmpty(dynamic value); // returns true if value is not null/empty
```

---

## 📋 Additional Information

- 📌 Version: `1.1.1`
- 🎯 Dart SDK: `>=3.0.0 <4.0.0`
- 💙 Flutter: `>=1.17.0`

This package is actively maintained. If you have suggestions, feature requests, or bugs:

- 🐛 [Open an Issue](https://github.com/AwabSabir373/flutter_utils/issues)
- 🍴 [Fork & Contribute](https://github.com/AwabSabir373/flutter_utils/fork)
- ⭐ If you find it useful, please give it a **star** on GitHub!

---

<div align="center">
Made with ❤️ by <a href="https://github.com/AwabSabir373">Awab Sabir</a>
</div>
