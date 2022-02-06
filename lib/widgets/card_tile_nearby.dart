import 'package:flutter/material.dart';
import 'package:hotel_app/thema.dart';

class CardTileNearby extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String address;
  final double distance;

  const CardTileNearby({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.address,
    this.distance = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        top: 12,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  address,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '${distance}km',
            style: redTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
