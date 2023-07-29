import 'dart:developer' as developer;

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