import 'dart:convert';

// ignore: non_constant_identifier_names
List<Doa> DoaFromJson(String str) =>
    List<Doa>.from(json.decode(str).map((x) => Doa.fromJson(x)));

class Doa {
  Doa({
    required this.id,
    required this.doa,
    required this.ayat,
    required this.latin,
    required this.artinya,
  });

  String id;
  String doa;
  String ayat;
  String latin;
  String artinya;

  factory Doa.fromJson(Map<String, dynamic> json) => Doa(
        id: json["id"],
        doa: json["doa"],
        ayat: json["ayat"],
        latin: json["latin"],
        artinya: json["artinya"],
      );
}
