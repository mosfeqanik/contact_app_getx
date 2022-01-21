import 'package:contacts_app_getx/screens/contacts_list/all_contacts_screen.dart';
import 'package:contacts_app_getx/screens/post_list/post_details.dart';
import 'package:contacts_app_getx/screens/single_post/single_post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ContractApp());
}
class ContractApp extends StatelessWidget {
  const ContractApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllContactListPage(),
      builder: EasyLoading.init(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => AllContactListPage()),
        GetPage(name: '/Postpage', page: () => PostPage()),
        GetPage(name: '/SinglePostPage', page: () => SinglePostViewPage()),
      ],
    );
  }
}


