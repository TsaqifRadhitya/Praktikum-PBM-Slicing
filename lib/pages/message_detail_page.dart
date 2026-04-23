import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing/entity/user.dart';

class MessageDetailPage extends StatelessWidget {
  const MessageDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context)?.settings.arguments as String?;
    final user = userId != null
        ? usersRepostory.where((element) => element.id == userId).firstOrNull
        : null;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            if (user == null)
              Text("Data User Tidak Tersedia")
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2.5,
                children: [
                  Text("ID User : ${user.id}"),
                  Text("Username : ${user.username}"),
                  Text("Email User : ${user.email}"),
                ],
              ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
