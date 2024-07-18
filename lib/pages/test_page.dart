import "package:flutter/material.dart";
//import "package:flutter/src/widgets/placeholder.dart";
import "package:flutter_test_application/styles/app_colors.dart";

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "This is counter $count",
          style: const TextStyle(
            color: AppColors.font,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              count += 1;
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
