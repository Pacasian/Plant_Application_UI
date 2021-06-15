// To parse this JSON data, do
//
//     final recommendPlant = recommendPlantFromJson(jsonString);

import 'dart:convert';

List<RecommendPlant> recommendPlantFromJson(String str) =>
    List<RecommendPlant>.from(json.decode(str).map((x) => RecommendPlant.fromJson(x)));

String recommendPlantToJson(List<RecommendPlant> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RecommendPlant {
  RecommendPlant({
    required this.id,
    required this.title,
    required this.country,
    required this.price,
    required this.image,
    required this.v,
  });

  String id;
  String title;
  String country;
  int price;
  String image;
  int v;

  factory RecommendPlant.fromJson(Map<String, dynamic> json) => RecommendPlant(
        id: json["_id"],
        title: json["title"],
        country: json["country"],
        price: json["price"],
        image: json["image"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "country": country,
        "price": price,
        "image": image,
        "__v": v,
      };
}
