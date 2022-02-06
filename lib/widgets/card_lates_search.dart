import 'package:flutter/material.dart';
import 'package:hotel_app/thema.dart';

class CardLatestSearch extends StatelessWidget {
  final String text;
  const CardLatestSearch({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 6,
      ),
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 1,
          color: Color(0xFFF1F1F1),
        ),
      ),
      child: Text(
        text,
        style: blackTextStyle,
      ),
    );
  }
}
