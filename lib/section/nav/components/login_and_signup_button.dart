import 'package:flutter/material.dart';
import 'package:mobile_banking_landing_page/components/custom_material_button.dart';
import 'package:mobile_banking_landing_page/constants.dart';

class LoginAndSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {},
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              " Login",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(width: kDefaultPadding),
        CustomMaterialButton(
          title: "Sign Up",
          onTap: () {},
        ),
      ],
    );
  }
}
