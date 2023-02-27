import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencySymbolService {
  final Map<String, String> _hexcodes = {
    "inr": "₹",
    "nzd": "\$",
    "aud": "\$",
    "cad": "\$",
    "usd": "\$",
    "gbp": "£",
  };

  Map<String, String> get hexMap {
    return _hexcodes;
  }

  Widget getcurrencysymbol({
    required String currencyname,
    required BuildContext context,
    int? fontSize,
    bool? bold,
    Color? color,
    bool? rubberstamp,
    double? height,
  }) {
    return Text(
      (_hexcodes[currencyname.toLowerCase()] ?? ""),
      style: TextStyle(
        fontFamily: ((currencyname.toLowerCase() == "inr")
            ? (((rubberstamp != null) && rubberstamp) ||
                    ((bold != null) && bold)
                ? "DM Sans Bold"
                : "DM Sans Medium")
            : ((rubberstamp != null) && rubberstamp)
                // ? "rubberstamp"
                ? "DM Sans Bold"
                : ((bold != null) && bold)
                    ? "DM Sans Bold"
                    : "DM Sans Medium"),
        letterSpacing: (rubberstamp != null) ? 0 : null,
        wordSpacing: (rubberstamp != null) ? 0 : null,
        color: ((color != null) ? color : Colors.black),
        fontSize: ((fontSize != null) ? fontSize.toDouble() : 14),
        height: height,
      ),
    );
  }

  String getcurrencysymbolstring({
    required String currencyname,
  }) {
    return (_hexcodes[currencyname.toLowerCase()] ?? "");
  }

  static final CurrencySymbolService _fonticonService =
      CurrencySymbolService._internal();

  factory CurrencySymbolService() {
    return _fonticonService;
  }
  CurrencySymbolService._internal() {}
}
