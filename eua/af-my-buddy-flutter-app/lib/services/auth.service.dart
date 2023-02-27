import 'dart:async';

import 'package:dsep_reference_flutter/providers/authentication-state.provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class AuthService {
  String? _signUpConfirmationToken;
  String? get signUpConfirmationString => _signUpConfirmationToken;

  static final AuthService _AuthService = AuthService._internal();
  factory AuthService() {
    return _AuthService;
  }

  AuthService._internal() {}

  setSignUpConfirmationString({
    required String? signUpConfirmationString,
  }) {
    _signUpConfirmationToken = signUpConfirmationString;
  }

  Future logout({required BuildContext context}) {
    final Completer _completer = new Completer();
    context.read<AuthenticationState>().clear();
    SharedPreferences.getInstance().then((SharedPreferences prefs) {
      prefs.clear();
      _completer.complete(true);
    });
    return _completer.future;
  }
}
