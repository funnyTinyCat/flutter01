import 'package:flutter/material.dart';
import 'package:flutter_test_application/config/app_routes.dart';
import 'package:flutter_test_application/provider/app_repo.dart';
import 'package:flutter_test_application/provider/post_provider.dart';
import 'package:flutter_test_application/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppRepo>(
          create: (context) => AppRepo(),
        ),
        ChangeNotifierProvider<PostProvider>(
          create: (context) => PostProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      //  home: TestPage(),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
      //     home: HomePage(),
    );
  }
}
