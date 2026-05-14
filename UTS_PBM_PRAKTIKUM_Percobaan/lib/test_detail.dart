// To parse this JSON data, do
//
//     final test = testFromJson(jsonString);
import 'dart:convert';

Test testFromJson(String str) => Test.fromJson(json.decode(str));

String testToJson(Test data) => json.encode(data.toJson());

class Test {
  Test({
    required this.nama,
    required this.umur,
    required this.info,
    required this.pengalaman,
  });

  String nama;
  int umur;
  Info info;
  List<Pengalaman> pengalaman;

  factory Test.fromJson(Map<String, dynamic> json) => Test(
        nama: json["nama"],
        umur: json["umur"],
        info: Info.fromJson(json["info"]),
        pengalaman: List<Pengalaman>.from(
            json["pengalaman"].map((x) => Pengalaman.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "umur": umur,
        "info": info.toJson(),
        "pengalaman": List<dynamic>.from(pengalaman.map((x) => x.toJson())),
      };
}

class Info {
  Info({
    required this.alamat,
    required this.wa,
  });

  String alamat;
  String wa;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        alamat: json["alamat"],
        wa: json["wa"],
      );

  Map<String, dynamic> toJson() => {
        "alamat": alamat,
        "wa": wa,
      };
}

class Pengalaman {
  Pengalaman({
    required this.kantor,
    required this.lamaPengalaman,
    required this.profesi,
  });

  String kantor;
  int lamaPengalaman;
  String profesi;

  factory Pengalaman.fromJson(Map<String, dynamic> json) => Pengalaman(
        kantor: json["kantor"],
        lamaPengalaman: json["lama_pengalaman"],
        profesi: json["profesi"],
      );

  Map<String, dynamic> toJson() => {
        "kantor": kantor,
        "lama_pengalaman": lamaPengalaman,
        "profesi": profesi,
      };
}
