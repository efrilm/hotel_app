import 'package:flutter/material.dart';
import 'package:hotel_app/thema.dart';
import 'package:hotel_app/widgets/card_hotel.dart';
import 'package:hotel_app/widgets/card_tile_hotel.dart';
import 'package:hotel_app/widgets/title_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 125,
            decoration: BoxDecoration(
              color: kCardColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 26,
              left: 23,
              right: 23,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_menu.png",
                      ),
                    ),
                  ),
                ),
                Text(
                  "Discover",
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_notif.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 78,
              left: 24,
              right: 24,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Balance",
                        style: greyTextStyle,
                      ),
                      Text(
                        "IDR 9.000.231",
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_add.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget titleRecommendedHotels() {
      return TitlePage(
        title: "Recommended Hotels",
      );
    }

    Widget recommendedHotels() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
          left: 24,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardHotel(
                imageUrl: "assets/icon_hotel1.png",
                name: "Bimosaurus Hotel",
                address: "Safari, Buitenzord",
                price: "599,999",
                rating: 4.9,
              ),
              CardHotel(
                imageUrl: "assets/image_hotel2.png",
                name: "Dainos Sas Hotel",
                address: "Bali, Denpasar",
                price: "599,999",
                rating: 4.9,
              ),
            ],
          ),
        ),
      );
    }

    Widget titleNewHotels() {
      return TitlePage(
        title: "New Hotels Experience",
      );
    }

    Widget newHotels() {
      return Container(
        margin: EdgeInsets.only(
          top: 11,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            CardTileHotel(
              name: "Skytown Hotel",
              address: "Sibolga Medan",
              imageUrl: "assets/image_hotel3.png",
              rating: 4.9,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            titleRecommendedHotels(),
            recommendedHotels(),
            titleNewHotels(),
            newHotels(),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
