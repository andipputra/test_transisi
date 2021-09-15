import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transisi_test/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var lUser = homeController.listUser;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            homeController.goToAddEmployee();
          },
          child: const Icon(Icons.add),
        ),
        body: Obx(
          () => ListView.builder(
            padding: const EdgeInsets.all(24),
            shrinkWrap: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: lUser[index].avatar,
                        imageBuilder: (context, imageProvider) => Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, image) => const Center(
                          child: Icon(Icons.error),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '${lUser[index].firstName} ${lUser[index].lastName}'),
                          Text(lUser[index].email)
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.star)
                ],
              ),
            ),
            itemCount: lUser.length,
          ),
        ));
  }
}
