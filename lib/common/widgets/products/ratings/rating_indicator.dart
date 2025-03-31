import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class DRatingBarIndicator extends StatelessWidget {
  const DRatingBarIndicator({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: DColors.grey,
      itemBuilder: (_, __) => Icon(Iconsax.star1, color: DColors.primary),
    );
  }
}
