import 'package:flutter/material.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/components/user_avatar.dart';
import 'package:flutter_test_application/config/app_routes.dart';
import 'package:flutter_test_application/provider/app_repo.dart';
import 'package:flutter_test_application/styles/app_text.dart';
import 'package:provider/provider.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AppRepo>().user;
    // Provider.of<AppRepo>(context).user;
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print("Log out");
                  break;
                default:
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Text('Edit'),
                ),
                const PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text('Log out'),
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          const UserAvatar(size: 90),
          //),
          const SizedBox(
            height: 24,
          ),
          Text(
            "${user?.firstname} ${user?.lastname}",
            style: AppText.header2,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Tuzla",
            style: AppText.subtitle3,
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '840',
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              ),
            ],
          ),
          const Divider(
            height: 24,
          ),
        ],
      ),
    );
  }
}
