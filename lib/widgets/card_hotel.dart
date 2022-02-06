import 'package:flutter/material.dart';
import 'package:hotel_app/thema.dart';

class CardHotel extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String address;
  final double rating;
  final String price;
  const CardHotel({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.address,
    this.rating = 0.0,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 350,
      margin: EdgeInsets.only(
        right: 24,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 256,
            height: 200,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_map.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            address,
                            style: greyTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "$rating",
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 19,
            ),
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, right: 12, left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price Start from:",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                RichText(
                  text: TextSpan(
                      text: "IDR $price ",
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                      children: [
                        TextSpan(
                          text: "/night",
                          style: greyTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
