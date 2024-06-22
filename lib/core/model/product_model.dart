// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:nectar/core/model/brand_model.dart';
import 'package:nectar/core/model/category_model.dart';

class ProductModel {
  final int id;
  final DateTime created_at;
  final BrandModel brand;
  final int brand_id;
  final CategoryModel category;
  final int category_id;
  final List images;
  final String description;
  final String name;
  final Map<String, dynamic> specifications;
  final double price;
  ProductModel({
    required this.id,
    required this.created_at,
    required this.brand,
    required this.brand_id,
    required this.category,
    required this.category_id,
    required this.images,
    required this.description,
    required this.name,
    required this.specifications,
    required this.price,
  });

  ProductModel copyWith({
    int? id,
    DateTime? created_at,
    BrandModel? brand,
    int? brand_id,
    CategoryModel? category,
    int? category_id,
    List<String>? images,
    String? description,
    String? name,
    Map<String, dynamic>? specifications,
    double? price,
  }) {
    return ProductModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      brand: brand ?? this.brand,
      brand_id: brand_id ?? this.brand_id,
      category: category ?? this.category,
      category_id: category_id ?? this.category_id,
      images: images ?? this.images,
      description: description ?? this.description,
      name: name ?? this.name,
      specifications: specifications ?? this.specifications,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': brand.toMap(),
      'brand_id': brand_id,
      'category': category.toMap(),
      'category_id': category_id,
      'images': images,
      'description': description,
      'name': name,
      'specifications': specifications,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      created_at: DateTime.parse(map['created_at']),
      brand: BrandModel.fromMap(map['brand'] as Map<String, dynamic>),
      brand_id: map['brand_id'] as int,
      category: CategoryModel.fromMap(map['category'] as Map<String, dynamic>),
      category_id: map['category_id'] as int,
      images: map['images'],
      description: map['description'] as String,
      name: map['name'] as String,
      specifications: Map<String, dynamic>.from(
          (map['specifications'] as Map<String, dynamic>)),
      price: map['price'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, created_at: $created_at, brand: $brand, brand_id: $brand_id, category: $category, category_id: $category_id, images: $images, description: $description, name: $name, specifications: $specifications, price: $price)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.created_at == created_at &&
        other.brand == brand &&
        other.brand_id == brand_id &&
        other.category == category &&
        other.category_id == category_id &&
        listEquals(other.images, images) &&
        other.description == description &&
        other.name == name &&
        mapEquals(other.specifications, specifications) &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        created_at.hashCode ^
        brand.hashCode ^
        brand_id.hashCode ^
        category.hashCode ^
        category_id.hashCode ^
        images.hashCode ^
        description.hashCode ^
        name.hashCode ^
        specifications.hashCode ^
        price.hashCode;
  }
}
