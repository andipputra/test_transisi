import 'package:get/get.dart';
import 'package:transisi_test/model/data/response/controller_response.dart';
import 'package:transisi_test/model/data/response/error_response.dart';
import 'package:transisi_test/model/data/response/login_response.dart';
import 'package:transisi_test/model/services/app_services.dart';

class LoginController extends GetxController {
  // var response = ControllerResponse(isSuccess: false).obs;

  var isSuccess = false.obs;
  var errorMessage = ''.obs;

  final service = AppServices();

  login({required String email, required String password}) async {
    final res = await service.loginService(email: email, password: password);

    if (res!.statusCode == 200) {
      isSuccess = true.obs;
    } else {
      var errorResponse = ErrorResponse.fromJson(res.data);

      isSuccess = false.obs;
      errorMessage = errorResponse.error.obs;
    }

    update();
  }
}
