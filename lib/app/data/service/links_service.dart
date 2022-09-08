import 'dart:io';

import 'package:testtechniquemobileflutter/app/data/models/links.dart';

class LinkService {
  Future<Links> getAllLinks() async {
    await Future.delayed(const Duration(seconds: 3));

    Links(
        first:
            "https://api.goodjobapp.ca/api/v2/worker/shifts?status%5B0%5D=waiting&page=1",
        last:
            "https://api.goodjobapp.ca/api/v2/worker/shifts?status%5B0%5D=waiting&page=10",
        next:
            "https://api.goodjobapp.ca/api/v2/worker/shifts?status%5B0%5D=waiting&page=2",
        prev: null);

    return Links();
  }
}
