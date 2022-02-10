import 'dart:convert';

import 'package:ibb_zemin_app/models/user_model.dart';

class MedidationModel {
  String title;
  UserModel author;
  String imageUrl;
  String description;
  int length;
  bool isFavorite;
  MedidationModel({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.description,
    required this.length,
    required this.isFavorite,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'author': author.toMap(),
      'imageUrl': imageUrl,
      'description': description,
      'length': length,
      'isFavorite': isFavorite,
    };
  }

  factory MedidationModel.fromMap(Map<String, dynamic> map) {
    return MedidationModel(
      title: map['title'] ?? '',
      author: UserModel.fromMap(map['author']),
      imageUrl: map['imageUrl'] ?? '',
      description: map['description'] ?? '',
      length: map['length']?.toInt() ?? 0,
      isFavorite: map['isFavorite'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory MedidationModel.fromJson(String source) =>
      MedidationModel.fromMap(json.decode(source));
}
