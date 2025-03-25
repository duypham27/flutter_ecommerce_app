import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/social_button.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get_utils/get_utils.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            /// Title
            Text(
              DTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: DSizes.spaceBtwSections),

            /// Form
            const DSignUpForm(),
            const SizedBox(height: DSizes.spaceBtwSections),

            /// Divider
            DFormDivider(dividerText: DTexts.orSignUpWith.capitalize!),
            const SizedBox(height: DSizes.spaceBtwSections),

            /// Social Buttons
            const DSocialButtons(),
          ],
        ),
      ),
    );
  }
}
