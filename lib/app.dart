import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

/// -- Use this Class to setup themes, initial Binding, any animations and much more using Material Widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: DAppTheme.lightTheme,
      darkTheme: DAppTheme.darkTheme,

      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding a show relevant screen
      home: const Scaffold(
        backgroundColor: DColors.primary,
        body: Center(child: CircularProgressIndicator(color: Colors.white)),
      ),
    );
  }
}
