import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class CustomIconButtonWithText extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onTap;

  const CustomIconButtonWithText({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
      ),
      child: SizedBox(
        width: 190,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.0),
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: kLightTextColor,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  height: 40,
                ),
                const SizedBox(width: kDefaultPadding),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
