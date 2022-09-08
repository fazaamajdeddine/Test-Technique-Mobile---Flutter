import 'dart:convert';

Meta mataFromJson(String str) => Meta.fromJson(json.decode(str));

class Meta {
  Meta(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.path,
      this.perPage,
      this.to,
      this.total});
  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  int? perPage;
  int? to;
  int? total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json['current_page'],
        from: json['from'],
        lastPage: json['last_page'],
        path: json['path'],
        perPage: json['per_page'],
        to: json['to'],
        total: json['total'],
      );
}