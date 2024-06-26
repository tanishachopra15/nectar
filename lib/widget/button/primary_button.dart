import 'package:flutter/material.dart';

enum ButtonType { primary, icon }

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  final ButtonType _type;
  final Color color;
  final VoidCallback onPressed;
  final String title;
  Widget? icon;
  TextStyle? style;

  PrimaryButton.primary(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.color})
      : _type = ButtonType.primary;
  PrimaryButton.icon(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.color,
      this.icon,
      this.style})
      : _type = ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(19),
      child: InkWell(
        borderRadius: BorderRadius.circular(19),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: _type == ButtonType.icon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    icon!,
                    Text(
                      title,
                      style: style,
                    ),
                    Opacity(
                      opacity: 0,
                      child: icon!,
                    )
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
        ),
      ),
    );
  }
}
