// To parse this JSON data, do
//
//     final transilatorModel = transilatorModelFromJson(jsonString);

import 'dart:convert';

transilator transilatorModelFromJson(String str) =>
    transilator.fromJson(json.decode(str));

String transilatorModelToJson(transilator data) =>
    json.encode(data.toJson());

class transilator {
  transilator({
    required this.data,
  });

  Data data;

  factory transilator.fromJson(Map<String, dynamic> json) =>
      transilator(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.languages,
  });

  List<Language> languages;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    languages: List<Language>.from(
        json["languages"].map((x) => Language.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
  };
}

class Language {
  Language({
    required this.language,
  });

  String language;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    language: json["language"],
  );

  Map<String, dynamic> toJson() => {
    "language": language,
  };
}