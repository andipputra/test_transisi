import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transisi_test/controller/home_controller.dart';
import 'package:transisi_test/controller/login_controller.dart';
import 'package:transisi_test/view/employee_detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController homeController = Get.put(HomeController());
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    var lUser = homeController.listUser;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {
              loginController.logout();
            }, icon: const Icon(Icons.logout))
          ],
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            homeController.goToAddEmployee();
          },
          child: const Icon(Icons.add),
        ),
        body: Obx(
          () => ListView.builder(
            padding: const EdgeInsets.all(8),
            shrinkWrap: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                Get.to(EmployeeDetailView(userProfile: lUser[index]));
              },
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(lUser[index].avatar)),
              title: Text('${lUser[index].firstName} ${lUser[index].lastName}'),
              subtitle: Text(lUser[index].email),
              trailing: const Icon(Icons.star),
            ),
            itemCount: lUser.length,
          ),
        ));
  }
}
