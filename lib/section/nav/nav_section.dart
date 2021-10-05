import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';
import 'package:mobile_banking_landing_page/section/nav/components/login_and_signup_button.dart';
import 'package:mobile_banking_landing_page/section/nav/components/nav_list.dart';

class NavSection extends StatelessWidget {
  const NavSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1280,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Besnik",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          if (MediaQuery.of(context).size.width > 800) NavList(),
          LoginAndSignUpButton(),
        ],
      ),
    );
  }
}
