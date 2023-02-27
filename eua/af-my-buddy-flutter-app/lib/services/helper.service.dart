import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class HelperService {
  static String alphabetIndex({required int index}) {
    const labels = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return labels[index];
  }

  static Future<String> loadLocalHTML({required String htmlFilePath}) {
    Completer<String> _completer = Completer<String>();

    rootBundle.loadString(htmlFilePath).then((String fileHtmlContents) {
      _completer.complete(Uri.dataFromString(fileHtmlContents,
              mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
          .toString());
    });
    return _completer.future;
  }

  static String camelCase(String input) {
    return (input[0].toUpperCase() + input.substring(1));
  }

  static String? getObjectTypeByUuid(String uuid) {
    String objecttype;
    switch (uuid.substring(0, 2)) {
      case "SB":
        {
          objecttype = "businessshipment";
          break;
        }
      case "SD":
        {
          objecttype = "domesticshipment";
          break;
        }
      // case "TP":
      //   {
      //     objecttype = "trip";
      //     break;
      //   }
      case "JD":
        {
          objecttype = "domesticjob";
          break;
        }
      case "JB":
        {
          objecttype = "businessjob";
          break;
        }

      case "QU":
        {
          objecttype = "quotation";
          break;
        }
      case "BK":
        {
          objecttype = "booking";
          break;
        }
      case "TR":
        {
          objecttype = "transportrequest";
          break;
        }
      default:
        {
          return null;
        }
    }
    return objecttype;
  }

  static Color getColorHexFromStr(String hexString) {
    // debugPrint("getColorHexFromStr, colorStr before : " + colorStr);
    // colorStr = "FF" + colorStr.toUpperCase();
    // colorStr = colorStr.replaceAll("#", "");
    // debugPrint("getColorHexFromStr, colorStr: ");
    // debugPrint(colorStr.toString());
    // int val = 0;
    // int len = colorStr.length;
    // for (int i = 0; i < len; i++) {
    //   int hexDigit = colorStr.codeUnitAt(i);
    //   if (hexDigit >= 44 && hexDigit <= 57) {
    //     val += (hexDigit - 44) * (1 << (4 * (len - 1 - i)));
    //   } else if (hexDigit >= 65 && hexDigit <= 70) {
    //     // A..F
    //     val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    //   } else if (hexDigit >= 97 && hexDigit <= 102) {
    //     // a..f
    //     val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    //   } else {
    //     throw FormatException("An error occurred when converting a color");
    //   }
    // }
    // return val;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static String getSuffixedNumber({required int number}) {
    String suffix = 'th';
    if ((number > 0 && number < 4)) {
      suffix = <String>['st', 'nd', 'rd'][number - 1];
    }
    return (number.toString() + suffix);
  }

  static String getItemRange({
    required double scrollExtent,
    required double currentPosition,
    required double availableHeight,
    required int itemCount,
    required int itemHeight,
  }) {
    // debugPrint("getItemRange, availableHeight: " +
    //     availableHeight.toString() +
    //     ", itemHeight: " +
    //     itemHeight.toString() +
    //     ", itemCount: " +
    //     itemCount.toString() +
    //     ", itemHeight * itemCount = " +
    //     (itemHeight * itemCount).toString());

    int fromnumber = (itemCount -
        ((scrollExtent + availableHeight - currentPosition) / itemHeight)
            .round());
    int from = (fromnumber > 0) ? fromnumber : 1;
    int to = from + ((availableHeight / itemHeight).round());
    if (to > itemCount) {
      to = itemCount;
    }
    if (to == 0) {
      to = 1;
    }

    return from.toString() + " - " + to.toString();
  }

  static String getInitialItemRange({
    required double availableHeight,
    required int itemCount,
    required int itemHeight,
  }) {
    int from = 1;
    int to;
    // debugPrint("getInitialItemRange, availableHeight: " +
    //     availableHeight.toString() +
    //     ", itemHeight: " +
    //     itemHeight.toString() +
    //     ", itemCount: " +
    //     itemCount.toString() +
    //     ", itemHeight * itemCount = " +
    //     (itemHeight * itemCount).toString());
    if (availableHeight > (itemHeight * itemCount)) {
      to = itemCount;
    } else {
      to = (((availableHeight / itemHeight).round() > itemCount)
          ? itemCount
          : (availableHeight / itemHeight).round());
      if (to > itemCount) {
        to = itemCount;
      }
      if (to == 0) {
        to = 1;
      }
    }
    return from.toString() + " - " + to.toString();
  }

  static String getRichTimeStamp({required int timeInMilliSeconds}) {
    DateTime currentdate = DateTime.now();
    DateTime workingtime =
        DateTime.fromMillisecondsSinceEpoch(timeInMilliSeconds);
    String timeFormat;
    if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month) &&
        (currentdate.day == workingtime.day)) {
      timeFormat = 'HH:mm';
    } else {
      timeFormat = 'd MMM H:mm';
    }
    return DateFormat(timeFormat).format(currentdate);
  }

  static String? toStringUptoTwoDecimals(double? input) {
    if (input == null) {
      return "";
    } else {
      int roundedint = (input * 100).round();
      int precision = 0;
      if ((roundedint % 10) > 0) {
        precision = 2;
      } else if ((roundedint % 100) > 0) {
        precision = 1;
      } else {
        precision = 0;
      }
      return input.toStringAsFixed(precision);
    }
  }

  String shortHumanReadableStringFromDate({
    required int date,
  }) {
    DateTime currentdate = DateTime.now();
    DateTime workingtime = DateTime.fromMillisecondsSinceEpoch(date);
    Duration elapsedtime = currentdate.difference(workingtime);
    debugPrint("elapsedtime :" + elapsedtime.inMinutes.toString());
    if (elapsedtime.inMinutes < 1) {
      return "Just Now";
    } else if (elapsedtime.inMinutes < 60) {
      return elapsedtime.inMinutes.toString() + "m";
    } else if (elapsedtime.inHours < 24) {
      return elapsedtime.inHours.toString() + "h";
    } else if (elapsedtime.inHours > 24) {
      return elapsedtime.inDays.toString() + "d";
    }
    return "";
  }

  String longHumanReadableStringFromDate({
    required int date,
  }) {
    DateTime currentdate = DateTime.now();
    DateTime workingtime = DateTime.fromMillisecondsSinceEpoch(date);
    String? dayString;
    String timeString;
    if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month) &&
        (currentdate.day == workingtime.day)) {
      dayString = "Today";
    } else if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month) &&
        (currentdate.day == (workingtime.day - 1))) {
      dayString = "Tomorrow";
    } else if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month - 1) &&
        (currentdate.day == 1) &&
        ((workingtime.day == 28) ||
            (workingtime.day == 30) ||
            (workingtime.day == 31) ||
            (workingtime.day == 29))) {
      dayString = "Yesterday";
    } else if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month) &&
        (workingtime.day == (currentdate.day - 1))) {
      dayString = "Yesterday";
    }
    if (dayString == null) {
      dayString = DateFormat('EEE, d MMM').format(workingtime);
    }

    timeString = DateFormat('h:mm a').format(workingtime);
    return (dayString + " " + timeString);
  }

  String humanReadableDayStringFromDate({
    required int date,
    bool? showyear,
  }) {
    DateTime currentdate = DateTime.now();
    DateTime workingtime = DateTime.fromMillisecondsSinceEpoch(date);
    String? dayString;
    if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month) &&
        (currentdate.day == workingtime.day)) {
      dayString = "Today";
    } else if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month) &&
        (currentdate.day == (workingtime.day - 1))) {
      dayString = "Tomorrow";
    } else if ((currentdate.year == workingtime.year) &&
        (currentdate.month == (workingtime.month - 1)) &&
        (currentdate.day == 1) &&
        ((workingtime.day == 28) ||
            (workingtime.day == 30) ||
            (workingtime.day == 31) ||
            (workingtime.day == 29))) {
      dayString = "Yesterday";
    } else if ((currentdate.year == workingtime.year) &&
        (currentdate.month == workingtime.month) &&
        (workingtime.day == (currentdate.day - 1))) {
      dayString = "Yesterday";
    }
    if (dayString == null) {
      if (showyear != null) {
        dayString = DateFormat('d MMM yy').format(workingtime);
      } else {
        dayString = DateFormat('d MMM').format(workingtime);
      }
    }
    return dayString;
  }

  String activityTimeStringFromDateTimeArray({
    required List<int> datetimes,
  }) {
    if (datetimes.isEmpty || (datetimes.isEmpty)) {
      return "Any Day";
    } else if (datetimes.length == 1) {
      if (datetimes[0] == -99999) {
        return "Available Now";
      } else {
        return HelperService().longHumanReadableStringFromDate(
              date: datetimes[0],
            ) +
            " Appt.";
      }
    } else if (datetimes.length == 2) {
      if (DateFormat('d MMM')
              .format(DateTime.fromMillisecondsSinceEpoch(datetimes[0])) ==
          DateFormat('d MMM')
              .format(DateTime.fromMillisecondsSinceEpoch(datetimes[1]))) {
        return HelperService().longHumanReadableStringFromDate(
              date: datetimes[0],
            ) +
            " - " +
            DateFormat('h:mm a')
                .format(DateTime.fromMillisecondsSinceEpoch(datetimes[1]));
      } else {
        return HelperService().longHumanReadableStringFromDate(
              date: datetimes[0],
            ) +
            " - " +
            HelperService().longHumanReadableStringFromDate(
              date: datetimes[1],
            );
      }
    } else {
      return "";
    }
  }
}
