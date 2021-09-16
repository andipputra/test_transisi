import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transisi_test/model/data/response/error_response.dart';
import 'package:transisi_test/model/services/app_services.dart';
import 'package:transisi_test/view/home_view.dart';
import 'package:transisi_test/view/login_view.dart';

class LoginController extends GetxController {
  // var response = ControllerResponse(isSuccess: false).obs;

  // var isSuccess = false.obs;
  // var errorMessage = ''.obs;

  final service = AppServices();

  @override
  void onInit() {
    chekLogin();
    super.onInit();
  }

  void login({required String email, required String password}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final res = await service.loginService(
      email: email,
      password: password,
    );

    if (res!.statusCode == 200) {
      prefs.setBool('isLogin', true);
    } else {
      prefs.setBool('isLogin', false);
      var errorResponse = ErrorResponse.fromJson(res.data);
      Get.snackbar(
        'Login',
        'Login Failure with message ${errorResponse.error}',
      );
    }

    update();

    chekLogin();
  }

  void chekLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isLogin = prefs.getBool('isLogin');

    if (isLogin != null && isLogin) {
      Get.off(() => const HomeView());
    } else {
      Get.offAll(() => const LoginViews());
    }
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogin', false);

    chekLogin();
  }
}
