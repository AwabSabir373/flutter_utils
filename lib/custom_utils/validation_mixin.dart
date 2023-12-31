import 'package:flutter/foundation.dart';

mixin ValidationMixn{
  String? validateEmail(String ? value) {
    if (value==null || value.isEmpty) return "Please enter your email";
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = RegExp("$pattern");
    if (!regex.hasMatch(value)) {
      return "Email address is not valid";
    } if(value.length>50){
      return "The email must not be greater than 50 characters";
    }
    return null;
  }
  /// Password matching expression. Password must be at least 4 characters,
  /// no more than 8 characters, and must include at least one upper case letter,
  /// one lower case letter, and one numeric digit.
  String? validatePassword(String ? value) {
    if (value==null || value.isEmpty) return "Please enter your password";
    if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d).{6,}$").hasMatch(value)) {
      return 'Password should be alphanumeric';
    }
    if (value.length <= 7) {
      return "Password should be more than 8 character";
    }
    if(value.length >25){
      return "Password should be less than 25 character";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateLoginPass(String value) {
    if (value.isEmpty) return "Please enter your password";
    return null;
  }
  String? validateuser(String value) {


    if (value.isEmpty) return "Please enter your username";
    if (value.length <= 6) {
      return "Username must be more than 8 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatePersons(String value) {

    if (value.isEmpty) return "Enter persons";
    if (value.isEmpty) {
      return "Must be 1 person";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateName(String? value) {
    if (value == null || value.isEmpty) return "Please enter your name";
    if (value.length <3) {
      return "Atleast 3 characters!";
    }
    if (value.length >= 50) {
      return "The name must not be greater than 50 characters";
    }
    return null;
  }
  String? validatetext(String? value) {
    if (value == null || value.isEmpty) return "Please enter your answer";
    if (value.length <4) {
      return "Atleast 4 characters!";
    }
    if (value.length >= 150) {
      return "Below 150 characters!";
    }
    return null;
  }
  String? validatePhoneNumber(String value) {
    if (value.isEmpty) return "Please enter mobile number";
    if (value.length <= 10) {
      return "Invalid mobile number";
    }
    Pattern pattern = r'(^(?:[+0]9)?[0-9]{9,20}$)';
    RegExp regex =  RegExp("$pattern");
    if (!regex.hasMatch(value.trim())) {
      return "Invalid mobile number";
    }
    return null;
  }
  String? validatMonthDayYear(String value) {
//day/month/year
    //([0-2][0-9]|(3)[0-1])[-|\/](((0)[0-9])|((1)[0-2]))[-|\/]\d{4}
    if (value.isEmpty) return "Please enter month and year";
    Pattern pattern = r'^(((0)[0-9])|((1)[0-2]))[/]\d{2}';
    RegExp regex = RegExp("$pattern");
    if (!regex.hasMatch(value.trim())) {
      return "eg. mm/yy";
    }
    return null;
  }
  String? validateText(String value) {
    if (value.isEmpty) return " Please Enter your Name";
    if (value.length <= 10) {
      return "Atleast 2 characters!";
    }
    if (value.length >= 500) {
      return "Below 50 characters!";
    }
    return null;
  }

  String ? validateVechileNo(String ? value){
    Pattern pattern = 'r(^[A-Z]{3}-d{3}-d{2})';
    RegExp regex = RegExp("$pattern");
    if (!regex.hasMatch(value!.trim())) {
      return "Invalid Vechile Number";
    }
    return null;
  }

  String? validateCompanyName(String value) {
    if (value.isEmpty) return " Please Enter company Name";
    if (value.length <= 2) {
      return "Atleast 2 characters!";
    }
    if (value.length >= 50) {
      return "Below 50 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatCompanyename(String value) {
    if (value.isEmpty) return " Please enter company name";
    if (value.length <= 2) {
      return "Atleast 2 characters!";
    }
    if (value.length > 50) {
      return "Below 50 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatCountryename(String value) {
    if (value.isEmpty) return " Please Enter Country Name";
    if (value.length <= 2) {
      return "Atleast 2 characters!";
    }
    if (value.length >= 50) {
      return "Below 50 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatZipCode(String value) {
    if (value.isEmpty) return "Enter Zip Code";
    if (value.length <= 2) {
      return "Zip Code";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatCityename(String value) {
    if (value.isEmpty) return " Please Enter City Name";
    if (value.length <= 2) {
      return "Atleast 2 characters!";
    }
    if (value.length >= 50) {
      return "Below 50 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatStateename(String value) {
    if (value.isEmpty) return " Please Enter State Name";
    if (value.length <= 2) {
      return "Atleast 2 characters!";
    }
    if (value.length >= 50) {
      return "Below 50 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatStreetname(String value) {
    if (value.isEmpty) return " Please Enter Street Name";
    if (value.length <= 2) {
      return "Atleast 2 characters!";
    }
    if (value.length >= 50) {
      return "Below 50 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateaddress(String value) {
    if (value.isEmpty) return "Please Enter your Address";
    if (value.length <= 5) {
      return "Atleast 5 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateCompanyAddress(String value) {
    if (value.isEmpty) return "Please enter company address";
    if (value.length <= 5) {
      return "Atleast 5 characters!";
    }
    if (value.length > 500) {
      return "Below 500 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateAccountNumber(String value) {
    if (value.isEmpty) return "Please Enter your Account Number";
    return null;
  }
  String? validateAccountName(String value) {
    if (value.isEmpty) return "Please Enter your Account Name";
    return null;
  }
  String? validateabout(String value) {
    if (value.isEmpty) return "Please Enter your About!";
    if (value.length <= 5) {
      return "Atleast 5 characters!";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatecard(String value) {
    if (value.isEmpty) return "Enter your Card Number";
    if (value.length < 12) {
      return "Card Number must be 12 Digits";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatemonth(String value) {
    if (value.isEmpty) return "Enter your Month";
    if (value.length < 2) {
      return "Month must be 2 Digit";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateyear(String value) {
    if (value.isEmpty) return "Enter your Year";
    if (value.length < 2) {
      return "Year must be 2 Digit";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validatecvv(String value) {
    if (value.isEmpty) return "Enter your CVV";
    if (value.length < 4 && value.length < 3) {
      return "CVV must be 3 or 4 Digit";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateholder(String value) {
    if (value.isEmpty) return "Enter Card Holder Name";
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String? validateMobile(String value) {
    // only for single country
    // String pattern = r'(^(?:[+0]9)?[0-9]{10,15}$)';
    String pattern = r'(^(?:[+0-9])?[0-9]{10,15}$)';
    RegExp regExp =   RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
  String? validateOldPassword(String value) {
    if (kDebugMode) {
      print("validatepassword : $value ");
    }

    if (value.isEmpty) return "Enter your old password";
    if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d).{6,}$").hasMatch(value)) {
      return 'Password Should be Alphanumeric';
    }
    if (value.length <= 6) {
      return "Password Should be more than 6 character";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
  String?  password(String value) {
    if (kDebugMode) {
      print("validatepassword : $value ");
    }

    if (value.isEmpty) return "Enter your   password";
    if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d).{6,}$").hasMatch(value)) {
      return 'Password Should be Alphanumeric';
    }
    if (value.length <= 6) {
      return "Password Should be more than 6 character";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (kDebugMode) {
      print("validatepassword : $value ");
    }

    if (value ==null || value.isEmpty) return "Confirm your password";
    if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d).{6,}$").hasMatch(value)) {
      return 'Password Should be Alphanumeric';
    }
    if (value.length <= 6) {
      return "Password Should be more than 6 character";
    }
    // Pattern pattern =
    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    // RegExp regex =   RegExp(pattern);
    // if (!regex.hasMatch(value.trim())) {
    //   return "include one capital letter, number and symbol";
    // }
    return null;
  }
}
