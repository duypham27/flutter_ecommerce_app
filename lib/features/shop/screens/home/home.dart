import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            DPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  DHomeAppBar(),

                  /// -- SearchBar

                  /// -- Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
