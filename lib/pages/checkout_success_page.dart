import 'package:flutter/material.dart';
import 'package:shopedia_fl/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Checkout Success',
          style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 18),
        ),
        elevation: 0,
      );
    }

    Widget content() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
              height: 69,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'You made a transaction',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Stay at home while we\nprepare your dream shoes',
            style: secondaryTextStyle,
            textAlign: TextAlign.center,
          ),
          Container(
            width: 196,
            height: 44,
            margin: EdgeInsets.only(top: defaultMargin),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                'Order Other Shoes',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          ),
          Container(
            width: 196,
            height: 44,
            margin: EdgeInsets.only(top: 12),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xff39374B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                'View My Order',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: medium, color: Color(0xffB7B6BF)),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
          child: header(), preferredSize: Size(double.infinity, 70)),
      body: content(),
    );
  }
}
