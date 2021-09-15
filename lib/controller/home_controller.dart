import 'package:get/get.dart';
import 'package:transisi_test/model/data/response/all_user_response.dart';
import 'package:transisi_test/model/data/user_profile.dart';
import 'package:transisi_test/model/services/app_services.dart';
import 'package:transisi_test/view/add_employee_view.dart';

class HomeController extends GetxController {
  final service = AppServices();

  RxList<UserProfile> listUser = RxList<UserProfile>();

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

  void fetchUser() async {
    final res = await service.getAllUser();

    if (res!.statusCode == 200) {
      final allUserData = AllUserResponse.fromJson(res.data);

      listUser.addAll(allUserData.data);
    } else {
      listUser.clear();
    }
  }

  void goToAddEmployee() {
    Get.to(const AddEmployeeView());
  }
}
