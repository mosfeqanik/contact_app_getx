import 'package:contacts_app_getx/screens/contacts_list/all_contacts_controller.dart';
import 'package:contacts_app_getx/screens/contacts_list/contact_model/contact_details.dart';
import 'package:contacts_app_getx/screens/post_list/post_details.dart';
import 'package:contacts_app_getx/utils/app_colors.dart';
import 'package:contacts_app_getx/utils/themes_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class AllContactListPage extends StatelessWidget {

  final HomeViewController _controller=Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    List<ContactDetails> usersDataList = _controller.userDataList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Obx(
          () => Text(
            '${_controller.appName}',
            style: TextThemes.HeaderStylePage,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => PostPage());
            },
            icon: const Icon(
              Icons.speaker_notes,
              color: AppColors.kTenPinkColor,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              _controller.callBottomSheet();
            },
            icon: const Icon(
              Icons.add_outlined,
              color: AppColors.kTenPinkColor,
              size: 35,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 55,
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          focusColor: AppColors.kSecondaryGreyColorTextFieldBox,
                          fillColor: AppColors.kSecondaryGreyColorTextFieldBox,
                          focusedBorder: buildOutlineInputBorderBlue(),
                          enabledBorder: buildOutlineInputBorder(),
                          hintText: "Search",
                          hintStyle: TextThemes.SearchBoxHintText,
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: AppColors.kSecondaryGreyColor,
                            size: 25,
                          )),
                      onTap: () {}),
                ),
                usersDataList.isNotEmpty
                    ? Container(
                        padding: const EdgeInsets.only(top: 20),
                        height: 600,
                        child: GetX<HomeViewController>(
                          builder: (_c) => ListView.separated(
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                  width: 80,
                                  child: Divider(
                                    color: AppColors.kSecondaryGreyColor,
                                  ));
                            },
                            itemCount: _c.userDataList.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 120,
                                child: ListTile(
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/users%2Fphoto-1633332755192-727a05c4013d.jpeg?alt=media&token=dbbbbc10-101e-44ac-8f02-3185f9616301',
                                      fit: BoxFit.fitHeight,
                                      height: 80,
                                    ),
                                  ),
                                  title: Text(_c.userDataList[index].name,
                                      style: TextThemes.ListVIewTitleTextStyle),
                                  subtitle: Text(_c.userDataList[index].address,
                                      style: TextThemes.SubtitleTextStyle),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    : Container(
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Text("No Contacts available"),
                        )),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorderBlue() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.blue),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: AppColors.kSecondaryGreyColor,
      ),
    );
  }
}
