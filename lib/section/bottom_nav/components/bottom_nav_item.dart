import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class BottomNavItem extends StatelessWidget {
  final String title;
  final List<String> items;

  const BottomNavItem({
    Key key,
    @required this.title,
    @required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18.0),
            ...List.generate(
              items.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  items[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
