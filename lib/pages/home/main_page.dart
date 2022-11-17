import 'package:flutter/material.dart';
import 'package:shopedia_fl/pages/home/chat_page.dart';
import 'package:shopedia_fl/pages/home/home_page.dart';
import 'package:shopedia_fl/pages/home/profile_page.dart';
import 'package:shopedia_fl/pages/home/wishlist_page.dart';
import 'package:shopedia_fl/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
          height: 22,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                print(value);
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                    height: 20,
                    color: currentIndex == 0 ? primaryColor : iconColorInactive,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Image.asset(
                      'assets/icon_chat.png',
                      width: 20,
                      height: 18,
                      color:
                          currentIndex == 1 ? primaryColor : iconColorInactive,
                    ),
                  ),
                  label: 'Message'),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Image.asset(
                      'assets/icon_wishlist.png',
                      width: 20,
                      height: 18,
                      color:
                          currentIndex == 2 ? primaryColor : iconColorInactive,
                    ),
                  ),
                  label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: Image.asset(
                      'assets/icon_profile.png',
                      width: 18,
                      height: 20,
                      color:
                          currentIndex == 3 ? primaryColor : iconColorInactive,
                    ),
                  ),
                  label: 'Profile')
            ],
            selectedItemColor: primaryColor,
            unselectedItemColor: transparentColor,
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
