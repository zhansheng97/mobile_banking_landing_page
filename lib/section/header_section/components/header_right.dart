import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/section/header_section/components/custom_design_card.dart';

class HeaderRight extends StatelessWidget {
  const HeaderRight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.purple],
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 100,
          height: 180,
          child: CustomDesignCard(
            income: "2123",
            cardNumber: "5643",
            color: Colors.purple,
            amount: "3,345",
          ),
        ),
        Positioned(
          top: 200,
          left: 200,
          height: 220,
          width: 200,
          child: CustomDesignCard(
            size: 1.5,
            income: "5600",
            cardNumber: "5080",
            color: Colors.pink,
            amount: "8,000",
          ),
        ),
        Positioned(
          top: 350,
          left: 350,
          child: CustomDesignCard2(),
        ),
        Positioned(
          top: 125,
          left: 275,
          child: CustomDesignCard3(),
        ),
      ],
    );
  }
}
