import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';
import 'package:mobile_banking_landing_page/section/bottom_nav/components/bottom_nav_item.dart';
import 'package:mobile_banking_landing_page/section/bottom_nav/components/custom_small_icon.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 50),
      color: kBackgroundGreyColor,
      child: Column(
        children: [
          Container(
            // height: 300,
            // color: Colors.blue,
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: 1280),
            child: Wrap(
              children: [
                Container(
                  height: 300,
                  width: 400,
                  padding: EdgeInsets.only(right: kDefaultPadding * 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Besnik",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      Text(
                        "Financial transactions remotely using a mobile device such as a smartphone or tablet",
                        style: TextStyle(height: 1.5),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      Row(
                        children: [
                          CustomSmallIcon(
                              icon:
                                  "assets/icons/facebook---filled(64x64)@1x.png"),
                          CustomSmallIcon(
                              icon:
                                  "assets/icons/google-outline---filled(64x64)@1x.png"),
                          CustomSmallIcon(
                              icon:
                                  "assets/icons/twitter---filled(64x64)@1x.png"),
                        ],
                      ),
                    ],
                  ),
                ),
                BottomNavItem(title: "Besnik", items: besnikList),
                BottomNavItem(title: "Support", items: supportList),
                BottomNavItem(title: "Contact", items: contactList),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<String> besnikList = [
  "About",
  "Terms of Use",
  "Privacy Policy",
  "How it Works",
  "Contact Us"
];

final List<String> supportList = [
  "Support Carrer",
  "24h Service",
  "Quick Chat",
];
final List<String> contactList = [
  "WhatsApp",
  "Support 24",
];
