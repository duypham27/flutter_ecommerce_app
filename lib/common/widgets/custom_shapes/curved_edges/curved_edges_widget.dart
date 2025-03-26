import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class DCurvedEdgeWidget extends StatelessWidget {
  const DCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: DCustomCurvedEdges(), child: child);
  }
}
