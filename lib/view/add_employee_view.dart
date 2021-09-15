import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(child: const Icon(Icons.close)),
        title: const Text('Add Employee'),
        centerTitle: false,
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
                  label: Text('Name'),
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
                  label: Text('Job'),
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
                  label: Text('Phone'),
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
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
