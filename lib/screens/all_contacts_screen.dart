import 'package:contacts_app_getx/utils/app_colors.dart';
import 'package:contacts_app_getx/utils/themes_styles.dart';
import 'package:flutter/material.dart';

class AllContactListPage extends StatelessWidget {
  const AllContactListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Contacts",
          style: TextThemes.HeaderStylePage,
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
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 600,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                          width: 80,
                          child: Divider(
                            color: AppColors.kSecondaryGreyColor,
                          ));
                    },
                    itemCount: 10,
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
                          title: Text("Amilia Ellie",
                              style: TextThemes.ListVIewTitleTextStyle),
                          subtitle: Text("South Sourma",
                              style: TextThemes.SubtitleTextStyle),
                        ),
                      );
                    },
                  ),
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
