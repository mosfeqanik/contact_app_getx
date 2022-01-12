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
              )),
          SizedBox(width: 20,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Expanded(
            child: SizedBox(
              height: 40,
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
                          size: 30,
                        )),
                    onTap: () {}),
              ),
            ),
          ],
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
