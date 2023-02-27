// import '../services/app-data.service.dart';
import 'package:flutter/material.dart';

class MessageBoard {
  static newmessage({
    // required GlobalKey<ScaffoldState> scaffoldKey,
    required BuildContext context,
    // GlobalKey<ScaffoldState> scaffoldKey,
    required String body,
    Duration? duration,
  }) async {
    final snackBar = SnackBar(
      content: Text(body),
      duration:
          (duration != null) ? duration : const Duration(milliseconds: 1500),
    );
    // Scaffold.of(AppDataService().navigatorKey.currentContext).showSnackBar(snackBar);
    await Future.delayed(Duration.zero);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // if (scaffoldKey.currentState != null) {
    //   scaffoldKey.currentState!.showSnackBar(snackBar);
    // }
    return;
  }
}
