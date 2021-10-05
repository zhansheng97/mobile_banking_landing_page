import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/constants.dart';
import 'package:mobile_banking_landing_page/section/download_section/components/custom_icon_button_with_text.dart';

class DownloadSection extends StatelessWidget {
  const DownloadSection({
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
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Image.asset("assets/images/iphone_mock.png"),
            ),
          ),
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
                            "Download",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: kDefaultPadding),
                            child: Text(
                                "Download Beshik mobile banking app for IOS and andriod. It helps you banking quickly and more smartly."),
                          ),
                          CustomIconButtonWithText(
                            text: "Play Store",
                            icon: "assets/icons/icons8-google-play-150.png",
                            onTap: () {},
                          ),
                          CustomIconButtonWithText(
                            text: "App Store",
                            icon: "assets/icons/icons8-app-store-150.png",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
