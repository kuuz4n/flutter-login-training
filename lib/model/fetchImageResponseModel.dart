class FetchImageReponseModel {
  late final String url;

  FetchImageReponseModel({required this.url});

  FetchImageReponseModel.fromJson(Map<String, dynamic> json) {
    url = json["url"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data["url"] = url;
    return data;
  }
}
