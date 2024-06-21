import 'package:flutter/material.dart';

class PrimaryCheckBox extends StatefulWidget {
  final String title;
  const PrimaryCheckBox({super.key, required this.title});

  @override
  State<PrimaryCheckBox> createState() => _PrimaryCheckBoxState();
}

bool isChecked = false;

class _PrimaryCheckBoxState extends State<PrimaryCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          value: isChecked,
          onChanged: (value) {
            setState(
              () {
                isChecked = value!;
              },
            );
          },
          title: Text(
            widget.title,
            style: TextStyle(
              color:
                  isChecked ? const Color(0xff53B175) : const Color(0xff181725),
            ),
          ),
          side: const BorderSide(
            color: Color(0xffB1B1B1),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          activeColor: const Color(0xff53B175),
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ],
    );
  }
}
