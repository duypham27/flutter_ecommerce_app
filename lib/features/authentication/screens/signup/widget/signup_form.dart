import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/signup/widget/terms_conditions_checkbox.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DSignUpForm extends StatelessWidget {
  const DSignUpForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: DTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              const SizedBox(width: DSizes.spaceBtwInputFields),

              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: DTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: DTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: DTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: DTexts.phoneNum,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: DTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Terms&Conditions Checkbox
          const DTermsAndConditions(),
          const SizedBox(height: DSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(DTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
