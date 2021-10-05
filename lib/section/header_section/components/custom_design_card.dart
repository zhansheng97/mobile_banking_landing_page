import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class CustomDesignCard3 extends StatelessWidget {
  const CustomDesignCard3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(CupertinoIcons.macwindow),
              const SizedBox(width: kDefaultPadding / 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple Pay",
                    style: TextStyle(
                      fontSize: 12.0,
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Debit Card",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: kLightTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "-\$2,000",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDesignCard2 extends StatelessWidget {
  const CustomDesignCard2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(
                    Icons.card_giftcard,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: kDefaultPadding / 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Month / year",
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "06/20",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            "**** 5080",
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
          Text(
            "2344.00",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDesignCard extends StatelessWidget {
  final Color color;
  final String income;
  final String cardNumber;
  final String amount;
  final double size;

  const CustomDesignCard({
    Key key,
    @required this.color,
    @required this.income,
    @required this.cardNumber,
    @required this.amount,
    this.size = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 40.0 * size,
                width: 40.0 * size,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                  size: 18.0 * size,
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Income",
                    style: TextStyle(
                      fontSize: 10.0 * size,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "$income",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0 * size,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * size),
          Text(
            "**** $cardNumber",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            "$amount",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0 * size,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
