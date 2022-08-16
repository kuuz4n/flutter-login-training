import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_sample/model/fetchImageResponseModel.dart';
import 'package:login_sample/services/apiService.dart';

class Waifu extends StatefulWidget {
  const Waifu({Key? key}) : super(key: key);

  @override
  State<Waifu> createState() => _Waifu();
}

class _Waifu extends State<Waifu> {
  String imagePath = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Waifu Page")),
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: fetchImage, child: const Text("Generate NSFW")),
          const SizedBox(
            height: 20,
          ),
          imagePath.isEmpty
              ? SizedBox()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Image.network(imagePath,
                          height: 400, fit: BoxFit.fill),
                    ),
                  ],
                )
        ]),
      ),
    );
  }

  void fetchImage() async {
    final response =
        await ApiService().get(path: "https://api.waifu.pics/sfw/waifu");
    var body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      var model = FetchImageReponseModel.fromJson(body);
      setState(() {
        imagePath = model.url;
      });
    }
  }
}
