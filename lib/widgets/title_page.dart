import 'package:flutter/material.dart';

import '../../thema.dart';

class TitlePage extends StatelessWidget {
  final String title;
  final bool isView;
  const TitlePage({
    Key? key,
    required this.title,
    this.isView = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              isView == true
                  ? Text(
                      "View All",
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    )
                  : Text(""),
            ],
          )
        ],
      ),
    );
  }
}
