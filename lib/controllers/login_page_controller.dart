part of 'controller.dart';

class LoginPageController extends GetxController {

  static final LoginPageController _instance = LoginPageController._internal();
  LoginPageController._internal();
  factory LoginPageController() => _instance;

  void goToPage()
  {
    // Get.to(() => NavigationHomePage());
  }
}