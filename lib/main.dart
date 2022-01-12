import 'package:contacts_app_getx/screens/all_contacts_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ContractApp());
}

class ContractApp extends StatelessWidget {
  const ContractApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllContactListPage(),
    );
  }
}


