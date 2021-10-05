import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/components/custom_material_button.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class SubscribeSection extends StatelessWidget {
  const SubscribeSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100),
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 1280),
      // color: Colors.red,
      child: Column(
        children: [
          SizedBox(
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Text(
                    "Subscribe Newsletter",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Text(
                    "Financial transactions remotely using a mobile",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 60),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: kLightTextColor),
                              borderRadius: BorderRadius.circular(12.0),
                              color: kBackgroundGreyColor,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter your email...",
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: kDefaultPadding),
                        CustomMaterialButton(
                          title: "Submit",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(height: 40),
        ],
      ),
    );
  }
}
