import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';
import 'package:mobile_banking_landing_page/section/information_section/components/custom_icon_and_desc_card.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({
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
                    "How it works",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Text(
                    "Mobile banking differes from mobile payments, which involves the use of a mobile device",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            children: [
              CustomIconAndDescCard(
                title: "Information",
                description:
                    "Enter your infromation ensure your details safe and more secure",
                icon: Icons.file_copy,
                onTap: () {},
              ),
              CustomIconAndDescCard(
                title: "Data Secure",
                description:
                    "Sending money faster & easier with end to end encryption",
                icon: Icons.data_usage,
                onTap: () {},
              ),
              CustomIconAndDescCard(
                title: "Add Cards",
                description:
                    "Add mutiple cards and trackyour daily expense with quality interface",
                icon: Icons.card_giftcard,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
