import 'package:contacts_app_getx/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController{


  var appName=''.obs;
  var userDataList=[].obs;
  var userNameController=TextEditingController();
  var userAddressController=TextEditingController();
  var userPhoneNumberController=TextEditingController();
  var userEmailController=TextEditingController();


  @override
  void onInit() {
    appName.value='Contacts';
    super.onInit();
  }

  @override
  void dispose() {
    appName.close();
  }

  void callBottomSheet(){
    Get.bottomSheet(
        Container(
          height: 400,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Column(
            children: [
              Container(
                // color: Colors.amber,
                width: double.infinity,
                height: 60,
                child: const Center(child: Text('Add Username', style: TextStyle(fontSize: 18),)),
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: TextField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                      hintText: 'Enter username'
                  ),
                  onChanged: (v){
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: TextField(
                  controller: userPhoneNumberController,
                  decoration: const InputDecoration(
                      hintText: 'Enter PhoneNumber'
                  ),
                  onChanged: (v){
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: TextField(
                  controller: userEmailController,
                  decoration: const InputDecoration(
                      hintText: 'Enter Email'
                  ),
                  onChanged: (v){
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: TextField(
                  controller: userAddressController,
                  decoration: const InputDecoration(
                      hintText: 'Enter Address'
                  ),
                  onChanged: (v){
                  },
                ),
              ),
              Container(
                // color: Colors.blue,
                width: double.infinity,
                height: 60,

                child: RaisedButton(
                  color: AppColors.kTenPinkColor,
                  onPressed: (){
                  if(userNameController.text.length==0){
                  }else{
                    userDataList.add(userNameController.text);
                    userNameController.clear();
                    Get.back();
                  }
                }, child: Text('Insert Now',style: TextStyle(color: Colors.white,fontSize: 30),),),
              ),
            ],
          ),
        )

    );

  }




}