import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void logMessage(message) {
  developer.log('$message', name: 'X-Log');
}

bool isNotEmpty(value) {
  if (value != null && value != '') {
    return true;
  }
  if(value is List){
    return value.isNotEmpty;
  }
  if(value is Map){
    return value.isNotEmpty;
  }
  if(value is String && value != ''){
    return value.isNotEmpty;
  }
  return false;
}

bool isEmpty(value) {
  if (value == null || value == '') {
    return true;
  }
  return false;
}

//scroll hander
/// Handles the scroll direction and triggers a callback function based on the scroll direction.
///
/// This function monitors the scroll direction of the provided `ScrollController`.
/// If the user scrolls down (reverse), it triggers the callback function with `true`.
/// If the user scrolls up (forward), it triggers the callback function with `false`.
///
/// \[function\] - A callback function that takes a boolean value indicating the scroll direction.
/// \[scrollController\] - The `ScrollController` that monitors the scroll position.
///
/// Example:
/// ```dart
/// ScrollController _scrollController = ScrollController();
/// scrollDirectionHandler(
///   function: (isScrollingDown) {
///     if (isScrollingDown) {
///       print('Scrolling down');
///     } else {
///       print('Scrolling up');
///     }
///   },
///   scrollController: _scrollController,
/// );
/// ```
void scrollDirectionHandler({required ValueChanged<bool> function, required ScrollController scrollController}) {
  if (scrollController.position.userScrollDirection == ScrollDirection.reverse) {
    function(true);
  }
  if (scrollController.position.userScrollDirection == ScrollDirection.forward) {
    function(false);
  }
}
