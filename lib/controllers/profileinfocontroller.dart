import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProfileInfoController with ChangeNotifier {

  Map<String, dynamic> UserData={};
  Future<void> fetchUserData(var UserId) async {
    var dio= Dio();
    try{
      print("in try");
      Response response= await dio.get("https://reqres.in/api/users/2");
      print("response is ${response.data}");
      UserData= response.data['data'];
      print("userdata is ${UserData['id']}");
    }
    catch(e){
      print("error is $e");
    }
  }


}