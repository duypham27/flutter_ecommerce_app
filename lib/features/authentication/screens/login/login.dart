import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/social_button.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: DSpacingStyle.paddingWithAppaBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const DLoginHeader(),

              /// Form
              const DLoginForm(),

              /// Divider
              DFormDivider(dividerText: DTexts.orSignInWith.capitalize!),
              const SizedBox(height: DSizes.spaceBtwSections),

              /// Footer
              const DSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
