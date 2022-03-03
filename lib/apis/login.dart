import 'dart:convert';
import 'package:flutter/foundation.dart';


import 'package:dio/dio.dart';


class LogIn {
  static Future signIn(var username, var password , var fcmtoken) async {
    print('LogIn');
    var dio = Dio();

    FormData formData = FormData.fromMap({
      'phone': username.toString(),
     
    });

    var response = await dio.post(
      'https://zeta-backend.herokuapp.com/api/user/public/generateotp',
      data: formData,
      options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );
    print(username);
    print(password);

    print('${response.toString()}');

    if (response.statusCode == 200) {
      print('Response data : ${response.data}');
      print('.."${response.data['data']}"');
   
     
      //  tokenPreference.setTokenPreferenceData(response.data['data']);
      // tokenProfile =
      //     TokenProfile.fromJson(json.decode('"${response.data['data']}"'));
      // print('123');
      // //  print('${json.decode(response.data['data'])}');
      // //  print('${json.decode(response.data)['data']}');
      // print('${(response.data)}');
      // loginPreference!.setLoginStatus(true);
      // return response.data;
      //return response.data['data'];
    } else if (response.statusCode == 400) {
      print('Error code : ${response.statusCode}');
      return response.data;
      //  print('message of signup - ${json.decode(response.data)['error']}');
      // return json.decode(response.data);
    } else {
      return response.data['message'];
    }
  }
}
