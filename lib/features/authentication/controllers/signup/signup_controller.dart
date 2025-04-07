import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  final userName = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// -- Signup
  Future<void> signup() async {
    try {
      // Start Loading
      DFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        DImages.docerAnimation,
      );

      // Check Internet Connectivity
      //final isConnected = await NetworkManager.instance.isConnected();

      // Form Validation

      // Privacy Policy Check

      // Register user in the Firebase Authentication & Save user data in the Firebase

      // Save Authentication user data in the Firebase Firestore

      // Show Success Message

      // Move to Verify Email Screen
    } catch (e) {
      // Show some Generic Error to the user
    } finally {
      // Remove Loader
    }
  }
}
