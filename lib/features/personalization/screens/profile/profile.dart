import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_circular_image.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce_app/features/personalization/screens/profile/widgets/profie_menu.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(showBackArrow: true, title: Text('Profile')),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Avatar
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const DCircularImage(
                      image: DImages.user1,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: DSizes.spaceBtwItems),

              /// Heading Profile Info
              const DSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),

              ///
              DProfileMenu(
                title: 'Name',
                value: 'An Duy Pham Bach',
                onPressed: () {},
              ),
              DProfileMenu(
                title: 'Username',
                value: 'an_duy_pham_bach',
                onPressed: () {},
              ),

              ///
              const SizedBox(height: DSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: DSizes.spaceBtwItems),

              /// Heading Personal Info
              const DSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: DSizes.spaceBtwItems),

              DProfileMenu(
                title: 'User ID',
                value: '456789',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              DProfileMenu(
                title: 'E-mail',
                value: 'phambachanduy',
                onPressed: () {},
              ),
              DProfileMenu(
                title: 'Phone Number',
                value: '+84 123456789',
                onPressed: () {},
              ),
              DProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              DProfileMenu(
                title: 'Date of Birth',
                value: '26 Jul, 2003',
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(height: DSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
