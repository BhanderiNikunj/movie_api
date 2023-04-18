import 'package:flutter/cupertino.dart';
import 'package:movie_api/ApiHelper/ApiHelper.dart';
import 'package:movie_api/Screen/Home/Model/HomeModel.dart';

class HomeProvider extends ChangeNotifier{
  String MovieName = "Game of Thrones";

  void ChangeData(String Name){
    MovieName = Name;
    notifyListeners();
  }


  Future<HomeModel> GetApiCall(String Name) async {
    ApiHelper apiHelper = ApiHelper();
    HomeModel h1 = await apiHelper.ApiCall(Name);
    return h1;
  }
}