import 'package:contacts_app_getx/screens/post_list/post_details_controller.dart';
import 'package:contacts_app_getx/utils/app_colors.dart';
import 'package:contacts_app_getx/utils/themes_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PostPage extends StatelessWidget {
  final Posts _controller = Get.put(Posts());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: .5,
        title: Obx(
          () => Text(
            '${_controller.appName}',
            style: TextThemes.HeaderStylePage,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_outlined,
              color: AppColors.kTenPinkColor,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        child: Obx(
          () =>
              // _controller.loadingStatus.value
              //     ? Center(
              //         child: CircularProgressIndicator(),
              //       )
              //     :
              ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                  width: 80,
                  child: Divider(
                    color: AppColors.kSecondaryGreyColor,
                  ));
            },
            itemCount: _controller.updatedPostListAPI.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 120,
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(
                      '/SinglePostPage/',
                      arguments: {
                        'title': _controller.updatedPostListAPI[index].title ??
                            "no tittle",
                        'id':_controller.updatedPostListAPI[index].id.toString() ??
                            "no id",
                        'body': _controller.updatedPostListAPI[index].body ??
                            "No body Available",

                      },
                    );
                  },
                  child: ListTile(
                    leading: Container(
                      child: Text(
                        _controller.updatedPostListAPI[index].id.toString() ??
                            "no id",
                        style: TextThemes.leadingTextStyle,
                      ),
                    ),
                    title: Text(
                        _controller.updatedPostListAPI[index].title ??
                            "no tittle",
                        style: TextThemes.ListVIewTitleTextStyle),
                    subtitle: Text(
                        _controller.updatedPostListAPI[index].body ??
                            "No body Available",
                        style: TextThemes.SubtitleTextStyle),
                  ),
                ),
              );
            },
          ),
        ),
      ),
        );
  }
}
