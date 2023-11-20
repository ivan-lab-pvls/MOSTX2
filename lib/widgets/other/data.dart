import 'dart:io';

import 'package:intl/intl.dart';
import 'package:most_sport/presentation/match_board/data/data.dart';

String getCurrentDate() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  return formattedDate;
}

String getStringDataFromDate(DateTime date) {
  String formattedDate = DateFormat('yyyy-MM-dd').format(date);
  return formattedDate;
}

Future<bool> checkxa(String onBoarding, String gex) async {
  final client = HttpClient();
  var uri = Uri.parse(onBoarding);
  var request = await client.getUrl(uri);
  request.followRedirects = false;
  var response = await request.close();

  if (response.statusCode == HttpStatus.movedTemporarily ||
      response.statusCode == HttpStatus.movedPermanently) {
   
    if (response.headers
        .value(HttpHeaders.locationHeader)
        .toString()
        .contains(gex)) {
      return false;
    } else {
      showBx = onBoarding;
      return true;
    }
  } else {
    return false;
  }
}