import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class CustomSmallIcon extends StatelessWidget {
  final String icon;

  const CustomSmallIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: kDefaultPadding / 2,
        top: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFECECEE),
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: EdgeInsets.all(5.0),
      child: Image.asset(
        icon,
        height: 15,
      ),
    );
  }
}
