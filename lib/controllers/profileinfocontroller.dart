import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProfileInfoController with ChangeNotifier {

  Map<String, dynamic> UserData={};
  String errormessage="";
  Future<void> fetchUserData(var UserId) async {
    var dio= Dio();
    try{
      UserData={};
      print("in try");
      Response response= await dio.get("https://reqres.in/api/users/$UserId");
      print("response is ${response.data}");
      UserData= response.data['data'];
      errormessage="";
      notifyListeners();
      print("userdata is ${UserData['id']}");
    } on DioException catch (e) {
      if (e.response != null) {
        print(
            "Dio Error  ${e.response!.statusCode} - ${e.response!
                .statusMessage}");
        errormessage= "${e.response!.statusCode} - ${e.response!
            .statusMessage}";
        notifyListeners();
      } else {
        print("Dio Error without response: $e");
      }
    }
    catch(e){
      print("error is $e");
    }
  }


}