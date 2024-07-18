import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_application/components/post_item.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/config/app_routes.dart';
import 'package:flutter_test_application/provider/post_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//
  @override
  void initState() {
    //
    super.initState();
    context.read<PostProvider>().getPost();
  }

//  List<String> users = [];
  @override
  Widget build(BuildContext context) {
//    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: "5minuteflutter",
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: SvgPicture.asset('assets/svg/location_pin_svgrepo_com.svg'),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, value, child) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return PostItem(
                post: value.list[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: value.list.length,
            // , itemCount: users.length, separatorBuilder: (BuildContext context), int index),
          );
        },
      ),
      //  ListView(        children: mockUsersFromServer(),      ),
    );
  }
}
