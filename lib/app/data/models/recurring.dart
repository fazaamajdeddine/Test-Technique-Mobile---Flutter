import 'dart:convert';

Recurring recurringFromJson(String str) => Recurring.fromJson(json.decode(str));

class Recurring {
  Recurring({this.id, this.startAt, this.endAt, this.isAvailable});

  int? id;
  String? startAt;
  String? endAt;
  bool? isAvailable;

  factory Recurring.fromJson(Map<String, dynamic> json) => Recurring(
        id: json['id'],
        startAt: json['start_at'],
        endAt: json['end_at'],
        isAvailable: json['is_available'],
      );
}
