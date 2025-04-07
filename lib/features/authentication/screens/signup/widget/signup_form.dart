import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/signup/widget/terms_conditions_checkbox.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_app/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DSignUpForm extends StatelessWidget {
  const DSignUpForm({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          /// First & Last Name
          Row(
            children: [
              /// First Name
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator:
                      (value) =>
                          DValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: DTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              const SizedBox(width: DSizes.spaceBtwInputFields),

              /// Last Name
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator:
                      (value) =>
                          DValidator.validateEmptyText('Last name', value),
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
            controller: controller.userName,
            validator:
                (value) => DValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: DTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            controller: controller.email,
            validator: (value) => DValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: DTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => DValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: DTexts.phoneNum,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: DSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            controller: controller.password,
            validator: (value) => DValidator.validatePassword(value),
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
              onPressed: () => controller.signup(),
              child: const Text(DTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
