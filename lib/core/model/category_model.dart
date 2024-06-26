// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryModel {
  final int id;
  final String name;
  final DateTime created_at;
  final String image;
  CategoryModel({
    required this.id,
    required this.name,
    required this.created_at,
    required this.image,
  });

  CategoryModel copyWith({
    int? id,
    String? name,
    DateTime? created_at,
    String? image,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      created_at: created_at ?? this.created_at,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      created_at: DateTime.now(),
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name, created_at: $created_at, image: $image)';
  }

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.created_at == created_at &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ created_at.hashCode ^ image.hashCode;
  }
}
