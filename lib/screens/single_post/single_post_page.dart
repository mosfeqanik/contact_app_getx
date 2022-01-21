import 'package:contacts_app_getx/utils/themes_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SinglePostViewPage extends StatelessWidget {
  const SinglePostViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments['id'],style: TextThemes.HeaderStylePage,),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.3,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             Text('Title',style: TextThemes.HeaderSinglePostPage,),
              Text(Get.arguments['title'],style: TextThemes.HeaderStylePage,),
              SizedBox(height: 10,),
              Text('body',style: TextThemes.HeaderSinglePostPage,),
              Text(Get.arguments['body'],),
            ],
          ),
        ),
      ),
    );
  }
}
