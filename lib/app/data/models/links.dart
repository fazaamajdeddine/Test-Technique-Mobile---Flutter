import 'dart:convert';

Links linksFromJson(String str) => Links.fromJson(json.decode(str));

class Links {
  Links({this.first, this.last, this.prev, this.next});
  String? first;
  String? last;
  Null? prev;
  String? next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json['first'],
        last: json['last'],
        prev: json['prev'],
        next: json['next'],
      );
}
