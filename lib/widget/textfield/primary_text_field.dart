import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrimaryTextFeild extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final String? Function(String?) validator;
  final Function(String)? onChanged;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? autofocus;
  final TextInputType? keyboardType;
  final int? maxLength;
  final FocusNode? focusNode;
  PrimaryTextFeild(
      {super.key,
      this.controller,
      required this.validator,
      this.onChanged,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.autofocus = false,
      this.maxLength,
      this.title,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboardType,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: const Color(0xff7C7C7C),
        controller: controller,
        autofocus: true,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffE2E2E2),
              ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon));
  }
}
