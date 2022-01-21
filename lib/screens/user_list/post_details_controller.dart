import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'model/post_model.dart';

class Posts extends GetxController {
  var updatedPostListAPI = <PostModel>[].obs;
  var appName = ''.obs;

  // var loadingStatus = false.obs;

  @override
  void onInit() {
    _getJsonHolderData();
    appName.value='Posts';
    super.onInit();
  }

  @override
  void dispose() {}

  void _getJsonHolderData() async {
    // loadingStatus.value = true;
    Dio _dio = Dio();
    var myUrl = 'https://jsonplaceholder.typicode.com/posts';
    var connectivityResult = await (Connectivity().checkConnectivity());

    try {
      if (connectivityResult == ConnectivityResult.none) {
        print('No Internet Connection');
        Get.snackbar('Ops!', 'No Internet Connection');
      } else {
        EasyLoading.show(status: 'loading...');
        var response1 = await _dio.get(myUrl);
        // var response2= await _dio.post('path');
        // var response3= await _dio.put('path');
        // var response4= await _dio.patch('path');
        // var response5= await _dio.delete('path');

        print('HTTP Request: URL $myUrl');
        print('HTTP Request: Status Code ${response1.statusCode}');

        if (response1.statusCode == 200) {
          var restfulAPIData = response1.data as List;

          var myReceivedListForAPI =
              restfulAPIData.map((e) => PostModel.fromJson(e)).toList();

          print(
              'HTTP Request: Before Insert Data ${updatedPostListAPI.length} ');
          updatedPostListAPI.addAll(myReceivedListForAPI);
          print(
              'HTTP Request: after Insert Data ${updatedPostListAPI.length} ');
          print('HTTP Request API Data ${updatedPostListAPI} ');
          // loadingStatus.value = false;
          EasyLoading.dismiss();
        } else {
          print('Data not found ');
          // loadingStatus.value = false;
        }
      }
    } catch (e, l) {
      print(runtimeType);
      print(e);
      print(l);
      // loadingStatus.value = false;
    }
  }
}
