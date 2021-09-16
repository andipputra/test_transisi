import 'package:get/get.dart';
import 'package:transisi_test/model/services/app_services.dart';
import 'package:transisi_test/view/home_view.dart';

class CreateEmployeeController extends GetxController {
  final service = AppServices();

  void createEmployee({required String name, required String job}) async {
    final result = await service.createUser(name: name, job: job);

    if (result!.statusCode == 201) {
      Get.off(() => const HomeView());

      Get.snackbar('create Employee', 'Success',
          snackPosition: SnackPosition.TOP);
    } else {
      Get.snackbar('Create Employee', result.statusMessage!, snackPosition: SnackPosition.TOP);
    }
  }
}
