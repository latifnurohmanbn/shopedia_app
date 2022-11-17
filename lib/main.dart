import 'package:flutter/material.dart';
import 'package:shopedia_fl/pages/cart_page.dart';
import 'package:shopedia_fl/pages/checkout_page.dart';
import 'package:shopedia_fl/pages/checkout_success_page.dart';
import 'package:shopedia_fl/pages/detail_chat_page.dart';
import 'package:shopedia_fl/pages/edit_profile_page.dart';
import 'package:shopedia_fl/pages/home/main_page.dart';
import 'package:shopedia_fl/pages/product_page.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:shopedia_fl/pages/signin_page.dart';
import 'package:shopedia_fl/pages/signup_page.dart';
import 'package:shopedia_fl/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage()
      },
    );
  }
}
