class MyAnimeListResponseModel {
  late final List<MyAnimelistModel> myAnimeList;
  MyAnimeListResponseModel({required this.myAnimeList});

  MyAnimeListResponseModel.fromJson(Map<String, dynamic> json) {
    myAnimeList = [];
    if (json["data"] != null) {
      for (var model in json["data"]) {
        var myAnimeListModel = MyAnimelistModel.fromJson(model);
        myAnimeList.add(myAnimeListModel);
      }
    }
  }
}

class MyAnimelistModel {
  late final String imageUrl;
  late final String synopsis;
  late final String title;

  MyAnimelistModel(
      {required this.imageUrl, required this.synopsis, required this.title});

  MyAnimelistModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json["images"]["jpg"]["image_url"] ?? "";
    synopsis = json["synopsis"] ?? "";
    title = json["title"] ?? "";
  }
}
