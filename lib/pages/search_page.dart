import 'package:flutter/material.dart';
import 'package:hotel_app/thema.dart';
import 'package:hotel_app/widgets/card_lates_search.dart';
import 'package:hotel_app/widgets/card_tile_hotel.dart';
import 'package:hotel_app/widgets/card_tile_nearby.dart';
import 'package:hotel_app/widgets/title_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget location() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Locations",
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: "Bandung,",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  children: [
                    TextSpan(
                      text: " Indonesia",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        width: double.infinity,
        height: 48,
        margin: EdgeInsets.only(
          top: 12,
          left: 24,
          right: 24,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_search.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 11,
            ),
            Text(
              "Find your Favorite Hotels",
              style: greyTextStyle,
            ),
          ],
        ),
      );
    }

    Widget divider() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        width: double.infinity,
        height: 1,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
      );
    }

    Widget latestSearch() {
      return Column(
        children: [
          TitlePage(
            title: "Latest Search",
            isView: false,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 12,
              right: 12,
              left: 24,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CardLatestSearch(text: "Masom"),
                    CardLatestSearch(text: "Swissbell"),
                    CardLatestSearch(text: "Yello"),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    CardLatestSearch(text: "GH Setiabudi"),
                    CardLatestSearch(text: "Damoty Hotel"),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget nearby() {
      return Container(
        child: Column(
          children: [
            TitlePage(
              title: "Nearby You",
              isView: false,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  CardTileNearby(
                    imageUrl: "assets/image_hotel4.png",
                    name: "GH Setiabuddy",
                    address: "Setiabuddy, Bandung",
                    distance: 0.1,
                  ),
                  CardTileNearby(
                    imageUrl: "assets/image_hotel5.png",
                    name: "Damsaurus Hotel",
                    address: "Pasteur, Bandung",
                    distance: 1.6,
                  ),
                  CardTileNearby(
                    imageUrl: "assets/image_hotel6.png",
                    name: "Andjoy Hotel",
                    address: "Kebon Jati, Bandung",
                    distance: 2.2,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget loadMore() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          bottom: 80,
        ),
        width: double.infinity,
        child: Text(
          'Load More',
          style: primaryTextStyle.copyWith(
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            location(),
            search(),
            divider(),
            latestSearch(),
            nearby(),
            loadMore(),
          ],
        ),
      ),
    );
  }
}
