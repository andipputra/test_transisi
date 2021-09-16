import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transisi_test/model/data/user_profile.dart';

class EmployeeDetailView extends StatelessWidget {
  const EmployeeDetailView({Key? key, required this.userProfile})
      : super(key: key);

  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star),
            ),
            const SizedBox(
              width: 12,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ],
          iconTheme: const IconThemeData(color: Colors.white),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.all(8),
              child: Text(
                '${userProfile.firstName} ${userProfile.lastName}',
                textAlign: TextAlign.center,
              ),
            ),
            background: CachedNetworkImage(
              imageUrl: userProfile.avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            ListTile(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              tileColor: Colors.white,
              leading: const Icon(Icons.mail),
              title: Text(userProfile.email),
              subtitle: const Text('E-mail'),
            )
          ],
        ),
      ),
    );
  }
}
