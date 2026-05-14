// To parse this JSON data, do
//
//     final dokterModel = dokterModelFromJson(jsonString);

import 'dart:convert';

DokterModel dokterModelFromJson(String str) =>
    DokterModel.fromJson(json.decode(str));

String dokterToJson(DokterModel data) => json.encode(data.toJson());

class DokterModel {
  DokterModel({
    required this.id,
    required this.name,
    required this.specialty,
    required this.education,
    required this.location,
    required this.experience,
    required this.organizations,
  });

  String id;
  String name;
  String specialty;
  String education;
  String location;
  String experience;
  String organizations;

  factory DokterModel.fromJson(Map<String, dynamic> json) => DokterModel(
        id: json["id"],
        name: json["name"],
        specialty: json["specialty"],
        education: json["education"],
        location: json["location"],
        experience: json["experience"],
        organizations: json["organizations"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "specialty": specialty,
        "education": education,
        "location": location,
        "experience": experience,
        "organizations": organizations,
      };
}

List<DokterModel> parse(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['Dokter'];
  return parsed.map((data) => DokterModel.fromJson(data)).toList();
}
