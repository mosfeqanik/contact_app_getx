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
              icon: Icon(
                Icons.add_outlined,
                color: AppColors.kTenPinkColor,
                size: 35,
              )),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextFormField(
                readOnly: true,
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                        color: AppColors.kSecondaryGreyColor,
                      ),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: AppColors.kSecondaryGreyColor,
                    ),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: AppColors.kSecondaryGreyColor,
                      size: 20,
                    )),
                onTap: () {
                }),
          ),
        ),
      ],),
    );
  }
}
