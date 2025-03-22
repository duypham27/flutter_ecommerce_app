import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/theme.dart';

void main() {
  runApp(const DApp());
}

class DApp extends StatelessWidget {
  const DApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: DAppTheme.lightTheme,
      darkTheme: DAppTheme.darkTheme,
    );
  }
}
