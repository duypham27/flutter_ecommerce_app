import 'package:flutter/foundation.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to Show Relevant Screen
  screenRedirect() async {
    // Local Storage
    if (kDebugMode) {
      print('==================== GET STORAGE ====================');
      print(deviceStorage.read('isFirstTime'));
    }

    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }

  /* -------------------- Email & Password sign-in -------------------- */

  /// [EmailAuthentication] - SignIn
  ///
  /// [EmailAuthentication] - Register
  ///
  /// [ReAuthentication] - ReAuthentication User
  ///
  /// [EmailVerification] - Mail Verification
  ///
  /// [EmailAuthentication] - Forget Password

  /* -------------------- Federated identity & social sign-in -------------------- */

  /// [GoogleAuthentication] - Google
  ///
  /// [FacebookAuthentication] - Facebook
  ///

  /* -------------------- ./end Federated identity & social sign-in -------------------- */
}
