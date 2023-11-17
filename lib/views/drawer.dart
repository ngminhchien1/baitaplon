import 'package:btl/views/login_page.dart';
import 'package:btl/views/manage.dart';
import 'package:btl/views/sign_in.dart';
import 'package:flutter/material.dart';

class SideBArMenu extends StatelessWidget {
  const SideBArMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green
          ),
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
          leading: const Icon(Icons.badge_outlined),
        ),
        ListTile(
          title: const Text("Quản lý"),
          leading: const Icon(Icons.currency_exchange),
          onTap: () {
            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManageBar(),
                      ));
          },
        ),
        ListTile(
          title: const Text("Quỹ"),
          leading: const Icon(Icons.analytics_outlined),
          onTap: () {},
        ),
        ListTile(
          title: Text("Cài đặt"),
          leading: const Icon(Icons.settings),
          onTap: () {},
        ),
        ListTile(
          title: const Text("Đăng xuất"),
          leading: const Icon(Icons.login),
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const LoginPage(),));
          },
        ),
      ]),
    );
  }
}
