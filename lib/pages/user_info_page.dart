import 'package:flutter/material.dart';

import '../model/user.dart';

class UserInfoPage extends StatelessWidget {
  final User userInfo;

  const UserInfoPage({required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        centerTitle: true,
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                userInfo.name.toString(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(userInfo.story.toString()),
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing: Text(userInfo.country.toString()),
            ),
            ListTile(
              title: Text(
                userInfo.phone.toString(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                userInfo.email == null
                    ? 'Not specified'
                    : userInfo.email as String,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.mail,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}