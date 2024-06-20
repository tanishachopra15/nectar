import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrimaryExpantionTile extends StatefulWidget {
  final String title;
  final String content;
  final String? imageUrl;

  const PrimaryExpantionTile({
    super.key,
    required this.title,
    required this.content,
    this.imageUrl,
  });

  @override
  State<PrimaryExpantionTile> createState() => _PrimaryExpantionTileState();
}

bool isExpanded = false;

class _PrimaryExpantionTileState extends State<PrimaryExpantionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (value) {
        setState(() {
          isExpanded = value;
        });
      },
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SvgPicture.asset(widget.imageUrl ?? ''),
        ],
      ),
      trailing: Icon(isExpanded
          ? Icons.keyboard_arrow_down_rounded
          : Icons.arrow_forward_ios_rounded),
      children: [
        ListTile(
          title: Text(
            widget.content,
            style: const TextStyle(
              fontFamily: 'Gilroy-Medium',
              fontSize: 13,
              color: Color(0xff7C7C7C),
            ),
          ),
        )
      ],
    );
  }
}
