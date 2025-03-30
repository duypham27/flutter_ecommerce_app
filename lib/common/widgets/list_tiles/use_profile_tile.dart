import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/d_circular_image.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class DUserProfileTile extends StatelessWidget {
  const DUserProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const DCircularImage(
        image: DImages.user1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'An Duy Pham Bach',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: DColors.white),
      ),
      subtitle: Text(
        'duypham@gmail.com',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: DColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: DColors.white),
      ),
    );
  }
}
