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
void scrollDirectionHandler({required ValueChanged<bool> function, required ScrollController scrollController}) {
  if (scrollController.position.userScrollDirection == ScrollDirection.reverse) {
    function(true);
  }
  if (scrollController.position.userScrollDirection ==
      ScrollDirection.forward) {
    function(false);
  }
}