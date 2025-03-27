import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/circural_container.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';

class DPrimaryHeaderContainer extends StatelessWidget {
  const DPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: DColors.primary,

          ///
          child: Stack(
            children: [
              /// -- Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: DCircularContainer(
                  backgroundColor: DColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: DCircularContainer(
                  backgroundColor: DColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
