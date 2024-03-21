import 'package:flutter/material.dart';

class AuthNotifier extends ChangeNotifier {
  bool _obscureText = true;
  bool get obscureText => _obscureText;
  set obscureText(bool newState) {
    _obscureText = newState;
    notifyListeners();
  }

  bool isPasswordValid = false;
  bool hasReachedMinimumLength = false;
  bool containsSpecialCharacters = false;

  void updatePasswordValidation(String password) {
    isPasswordValid = password.length >= 8;
    hasReachedMinimumLength = password.length >= 8;
    containsSpecialCharacters =
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    notifyListeners();
  }
}
