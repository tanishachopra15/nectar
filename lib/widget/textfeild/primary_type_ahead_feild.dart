import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class PrimaryTypeAheadFeild<T> extends StatelessWidget {
  final Widget Function(BuildContext, T) itemBuilder;
  final Function(dynamic) onSelected;
  final FutureOr<List<T>> Function(String) suggestionsCallback;

  final Widget Function(BuildContext, TextEditingController, FocusNode)?
      builder;
  const PrimaryTypeAheadFeild(
      {super.key,
      required this.itemBuilder,
      required this.onSelected,
      required this.suggestionsCallback,
      required TextEditingController controller,
      required this.builder});

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<T>(
      itemBuilder: itemBuilder,
      onSelected: onSelected,
      suggestionsCallback: suggestionsCallback,
      builder: builder,
    );
  }
  
}
