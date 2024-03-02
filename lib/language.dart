import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languagess extends StatefulWidget {
  const Languagess({super.key});

  @override
  State<Languagess> createState() => _LanguagessState();
}

class _LanguagessState extends State<Languagess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Changing Language"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 10,
          ),
          OutlinedButton(
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text('English')),
          OutlinedButton(
              onPressed: () {
                Get.updateLocale(Locale('ne', 'NP'));
              },
              child: Text('Nepali'))
        ],
      ),
    );
  }
}
