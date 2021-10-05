import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/section/header_section/components/header_left.dart';
import 'package:mobile_banking_landing_page/section/header_section/components/header_right.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 800)
      return Container(
        height: 672,
        // color: Colors.blue,
        child: Row(
          children: [
            Expanded(
              child: HeaderLeft(),
            ),
            Expanded(
              child: HeaderRight(),
            ),
          ],
        ),
      );
    else
      return Column(
        children: [
          Container(
            height: 672,
            child: HeaderLeft(),
          ),
          Container(
            height: 672,
            child: HeaderRight(),
          ),
        ],
      );
  }
}
