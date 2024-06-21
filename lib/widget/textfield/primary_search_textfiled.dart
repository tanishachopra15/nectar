import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrimarySearchTextfiled extends StatelessWidget {
  final VoidCallback? onTap;
  const PrimarySearchTextfiled({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      decoration: InputDecoration(
        // focusColor: Color(0xffF2F3F2),
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(15, 16, 10, 17),
          child: SvgPicture.asset('asset/icon/search_icon.svg'),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: 'Search Store',
      ),
    );
  }
}
