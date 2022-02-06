import 'package:flutter/material.dart';
import 'package:hotel_app/pages/home_page.dart';
import 'package:hotel_app/pages/search_page.dart';
import 'package:hotel_app/thema.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listPage = [
      HomePage(),
      SearchPage(),
      Text(''),
      Text(''),
    ];

    final bottomNavigationitem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icon_home.png',
          width: 24,
          color: currentIndex == 0 ? kPrimaryColor : kLightGrey,
        ),
        label: "Dashboard",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icon_search.png',
          width: 24,
          color: currentIndex == 1 ? kPrimaryColor : kLightGrey,
        ),
        label: "Lead",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icon_order.png',
          width: 24,
          color: currentIndex == 2 ? kPrimaryColor : kLightGrey,
        ),
        label: "Berkunjung",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icon_profile.png',
          width: 24,
          color: currentIndex == 3 ? kPrimaryColor : kLightGrey,
        ),
        label: "Penjualan",
      ),
    ];

    final bottomNavBar = BottomNavigationBar(
      items: bottomNavigationitem,
      onTap: onItemTapped,
      currentIndex: currentIndex,
      unselectedItemColor: kGreyColor,
      selectedItemColor: kPrimaryColor,
      selectedLabelStyle: primaryTextStyle,
      showUnselectedLabels: true,
    );

    return Scaffold(
      body: listPage[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
