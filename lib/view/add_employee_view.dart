import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transisi_test/controller/create_employee_controller.dart';

class AddEmployeeView extends StatefulWidget {
  const AddEmployeeView({Key? key}) : super(key: key);

  @override
  _AddEmployeeViewState createState() => _AddEmployeeViewState();
}

class _AddEmployeeViewState extends State<AddEmployeeView> {
  final nameTEC = TextEditingController();
  final jobTEC = TextEditingController();
  final phoneTEC = TextEditingController();
  final emailTEC = TextEditingController();

  final _fKey = GlobalKey<FormState>();

  final ceController = Get.put(CreateEmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.close),
        ),
        title: const Text('Add Employee'),
        centerTitle: false,
        titleTextStyle: const TextStyle(fontSize: 20),
        actions: [
          TextButton(
              onPressed: () {
                ceController.createEmployee(
                    name: nameTEC.text, job: jobTEC.text);
              },
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _fKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameTEC,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.people),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: jobTEC,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Job',
                  prefixIcon: Icon(Icons.work),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: phoneTEC,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: emailTEC,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
