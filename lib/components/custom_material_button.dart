import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class CustomMaterialButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final VoidCallback onTap;

  const CustomMaterialButton({
    Key key,
    @required this.title,
    @required this.onTap,
    this.backgroundColor = kButtonColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: onTap,
        child: Container(
          decoration: (backgroundColor == Colors.white)
              ? BoxDecoration(
                  border: Border.all(color: kLightTextColor),
                  borderRadius: BorderRadius.circular(12.0),
                )
              : null,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
