// To parse this JSON data, do
//
//     final sports = sportsFromJson(jsonString);

import 'dart:convert';

SportsModel sportsFromJson(String str) =>
    SportsModel.fromJson(json.decode(str));

String sportsToJson(SportsModel data) => json.encode(data.toJson());

class SportsModel {
  SportsModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.publisher,
    required this.news,
    required this.pictureId,
    required this.genre,
    required this.time,
  });

  String id;
  String title;
  String subtitle;
  String publisher;
  String news;
  String pictureId;
  String genre;
  String time;

  factory SportsModel.fromJson(Map<String, dynamic> json) => SportsModel(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        publisher: json["publisher"],
        news: json["news"],
        pictureId: json["pictureId"],
        genre: json["genre"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "publisher": publisher,
        "news": news,
        "pictureId": pictureId,
        "genre": genre,
        "time": time,
      };
}

List<SportsModel> parse(String? json) {
  if (json == null) {
    return [];
  }
  final List parsed = jsonDecode(json)['sports'];
  return parsed.map((json) => SportsModel.fromJson(json)).toList();
}
