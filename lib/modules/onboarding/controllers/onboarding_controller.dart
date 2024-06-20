import 'package:get/get.dart';
import 'package:yesheis/core/services/user_service.dart';
import 'package:yesheis/routes/app_pages.dart';

class OnBoardingController extends GetxController {
  final userService = Get.find<UserService>();

  Future<void> gotoHome() async {
    userService.saveBool(false);
    Get.offAndToNamed(Routes.Home);
  }
}
