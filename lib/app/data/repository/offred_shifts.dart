import 'dart:convert';

import 'package:flutter/services.dart';

Future<void> readJson() async {
final String response = await rootBundle.loadString('assets/offered_shifts.json');
final data = await json.decode(response);
// ... 
}