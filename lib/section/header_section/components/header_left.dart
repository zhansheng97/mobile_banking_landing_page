import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/components/custom_material_button.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class HeaderLeft extends StatelessWidget {
  const HeaderLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kBackgroundGreyColor,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 300,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, size: 16.0),
                      Text(
                        "30 Days free trial",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      "Life Should Be Easy.",
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            fontWeight: FontWeight.w900,
                            color: kDarkTextColor,
                            height: 1.2,
                          ),
                    ),
                  ),
                  Text(
                    "Financial transaction remotely using a mobile device such a smartphone or tablet",
                    style: TextStyle(color: kLightTextColor),
                  ),
                  const SizedBox(height: kDefaultPadding * 2.5),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: CustomMaterialButton(
                        title: "Get started", onTap: () {}),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
