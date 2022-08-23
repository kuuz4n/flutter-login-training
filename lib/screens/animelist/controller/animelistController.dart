import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:login_sample/routes/route-list.dart';

import '../../../model/fetchAnimeList.dart';
import '../../../services/apiService.dart';

class MyAnimelistController extends GetxController {
  // MyAnimeListResponseModel list = MyAnimeListResponseModel(myAnimeList: []);
  RxList<MyAnimelistModel> list = <MyAnimelistModel>[].obs;
  final inputAnime = TextEditingController();
  //Fetch Textfield data to search anime

  @override
  void onInit() {
    fetchAnime();
    super.onInit();
  }

  void fetchAnime() async {
    String asd = inputAnime.text;
    final response = await ApiService()
        .get(path: "https://api.jikan.moe/v4/anime?q=$asd&sfw");
    var body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      var model = MyAnimeListResponseModel.fromJson(body);
      list.assignAll(model.myAnimeList);
    } else {
      list.assignAll([]);
    }
  }

  void goToAnimeDetails(title, synopsis, imageUrl) {
    Get.toNamed(RoutesList.ANIME_DETAILS, arguments: {
      "title": title,
      "synopsis": synopsis,
      "imageUrl": imageUrl,
    });
  }
}
