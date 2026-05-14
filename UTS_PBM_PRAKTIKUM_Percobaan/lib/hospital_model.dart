// To parse this JSON data, do
//
//     final hospital = hospitalFromJson(jsonString);

import 'dart:convert';

HospitalModel hospitalFromJson(String str) =>
    HospitalModel.fromJson(json.decode(str));

String hospitalToJson(HospitalModel data) => json.encode(data.toJson());

class HospitalModel {
  HospitalModel({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.room,
  });

  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  Room room;

  factory HospitalModel.fromJson(Map<String, dynamic> json) => HospitalModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        city: json["city"],
        rating: json["rating"].toDouble(),
        room: Room.fromJson(json["room"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "pictureId": pictureId,
        "city": city,
        "rating": rating,
        "room": room.toJson(),
      };
}

class Room {
  Room({
    required this.executive,
    required this.ekonomi,
  });

  List<Ekonomi> executive;
  List<Ekonomi> ekonomi;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        executive: List<Ekonomi>.from(
            json["executive"].map((x) => Ekonomi.fromJson(x))),
        ekonomi:
            List<Ekonomi>.from(json["ekonomi"].map((x) => Ekonomi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "executive": List<dynamic>.from(executive.map((x) => x.toJson())),
        "ekonomi": List<dynamic>.from(ekonomi.map((x) => x.toJson())),
      };
}

class Ekonomi {
  Ekonomi({
    required this.name,
  });

  String name;

  factory Ekonomi.fromJson(Map<String, dynamic> json) => Ekonomi(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

List<HospitalModel> parse(String? json) {
  if (json == null) {
    return [];
  }
  final List parsed = jsonDecode(json)['rs'];
  return parsed.map((json) => HospitalModel.fromJson(json)).toList();
}
