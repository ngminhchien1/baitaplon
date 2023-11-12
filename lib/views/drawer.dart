import 'package:flutter/material.dart';

class SideBArMenu extends StatelessWidget {
  const SideBArMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const UserAccountsDrawerHeader(
          accountName: Text("Username"),
          accountEmail: Text("099999123456"),
          currentAccountPicture: ClipOval(
            child: Icon(
              Icons.person,
            ),
          ),
        ),
        ListTile(
          title: const Text('Thông tin cá nhân'),
          onTap: () {},
          leading: const Icon(Icons.person),
        ),
        ListTile(
          title: const Text("Cài đặt"),
          leading: const Icon(Icons.settings),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Đăng xuất"),
          leading: const Icon(Icons.login),
          onTap: () {},
        )
      ]),
    );
  }
}
