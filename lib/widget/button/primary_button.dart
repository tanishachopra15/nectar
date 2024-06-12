import 'package:flutter/material.dart';

enum ButtonType { primary, icon }

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  final ButtonType _type;
  final Color color;
  final VoidCallback onPressed;
  final String title;
  Widget? icon;

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
      this.icon})
      : _type = ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          )),
          backgroundColor: WidgetStateProperty.all(color),
        ),
        onPressed: onPressed,
        child: _type == ButtonType.icon
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      icon!,
                      Text(
                        title,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
      ),
    );
  }
}
