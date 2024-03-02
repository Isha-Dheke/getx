import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorials"),
      ),
      body: Column(children: [
        Card(
          child: ListTile(
            title: const Text("GetX CARD"),
            subtitle: const Text("Getx with subtitle"),
            onTap: () {
              Get.defaultDialog(
                  title: "Delete Chat",
                  middleText:
                      "Are you sure you want to delete chat permanently?",
                  confirm: TextButton(
                    child: Text("Yes"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  cancel: TextButton(
                    child: Text("No"),
                    onPressed: () {
                      Get.back();
                    },
                  ));
            },
          ),
        ),
        Card(
          child: ListTile(
            title: const Text("GetSlide CARD"),
            subtitle: const Text("Getx with subtitle"),
            onTap: () {
              Get.bottomSheet(Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 210, 176),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.light_mode),
                      title: const Text('Light mode'),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.dark_mode),
                      title: const Text('Dark mode'),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    )
                  ],
                ),
              ));
            },
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Reminder', 'Drink Water',
              backgroundColor: Colors.black,
              colorText: Colors.white,
              snackPosition: SnackPosition.TOP);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
