import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePageState extends StatelessWidget {
  const HomePageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Get.snackbar(snackPosition: SnackPosition.BOTTOM,
                          "Downloading completed","Your song downloaded");
                    },
                    child: Text("Snack bar")),
              ],
            ),
          )),
    );
  }
}
