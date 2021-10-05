import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/components/custom_material_button.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class GuidanceSection extends StatelessWidget {
  const GuidanceSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60),
      constraints: BoxConstraints(
        maxWidth: 1280,
      ),
      // color: Colors.blue,
      height: 650,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 300,
                    child: Container(
                      padding: EdgeInsets.all(kDefaultPadding),
                      // color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Connecting all your banking needs",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: kDefaultPadding),
                            child: Text(
                              "Financial transactions remotely using a mobile device such as a smartphone or tablet",
                            ),
                          ),
                          const SizedBox(height: kDefaultPadding),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: CustomMaterialButton(
                              backgroundColor: Colors.white,
                              textColor: Colors.black,
                              title: "Get started",
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Image.asset("assets/images/iphone_mock.png"),
            ),
          ),
        ],
      ),
    );
  }
}
