// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:nectar/core/model/product_model.dart';

class CartModel {
  final String user_id;
  final ProductModel product;
  final int quantity;
  final DateTime created_at;
  CartModel({
    required this.user_id,
    required this.product,
    required this.quantity,
    required this.created_at,
  });

  CartModel copyWith({
    String? user_id,
    ProductModel? product,
    int? quantity,
    DateTime? created_at,
  }) {
    return CartModel(
      user_id: user_id ?? this.user_id,
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      created_at: created_at ?? this.created_at,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': user_id,
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      user_id: map['user_id'] ?? '',
      product: ProductModel.fromMap(map['product'] ?? {}),
      quantity: map['quantity'] ?? 0,
      created_at: DateTime.now(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) =>
      CartModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CartModel(user_id: $user_id, product: $product, quantity: $quantity, created_at: $created_at)';
  }

  @override
  bool operator ==(covariant CartModel other) {
    if (identical(this, other)) return true;

    return other.user_id == user_id &&
        other.product == product &&
        other.quantity == quantity &&
        other.created_at == created_at;
  }

  @override
  int get hashCode {
    return user_id.hashCode ^
        product.hashCode ^
        quantity.hashCode ^
        created_at.hashCode;
  }
}
