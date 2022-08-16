// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_sample/model/fetchAnimeList.dart';
import 'package:login_sample/services/apiService.dart';

import 'anime_details.dart';

class MyAnimeListPage extends StatefulWidget {
  const MyAnimeListPage({Key? key}) : super(key: key);

  @override
  State<MyAnimeListPage> createState() => _MyAnimeListPage();
}

class _MyAnimeListPage extends State<MyAnimeListPage> {
  MyAnimeListResponseModel list = MyAnimeListResponseModel(myAnimeList: []);
  TextEditingController inputAnime = TextEditingController();
  String animeTitle = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Anime")),
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: inputAnime,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Anime here!',
            ),
          ),
          ElevatedButton(
              onPressed: (() => fetchAnime(inputAnime.text)),
              child: const Text("Search")),
          const SizedBox(
            height: 20,
          ),
          list.myAnimeList.isEmpty
              ? const SizedBox()
              : Container(
                  height: 400,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: list.myAnimeList.length,
                    itemBuilder: ((context, index) {
                      return animeSearch(
                          list.myAnimeList[index].title,
                          list.myAnimeList[index].synopsis,
                          list.myAnimeList[index].imageUrl);
                    }),
                  ),
                ),
        ]),
      ),
    );
  }

  Widget animeSearch(String title, String synopsis, String imgUrl) => Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.red.withOpacity(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  side: BorderSide(color: Colors.white))),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AnimeDetails(
                        title: title, synopsis: synopsis, imgUrl: imgUrl)));
          },
          child: Image.network(imgUrl),
        ),
      );

//Fetch Textfield data to search anime
  void fetchAnime(String animeTitle) async {
    final response = await ApiService()
        .get(path: "https://api.jikan.moe/v4/anime?q=$animeTitle&sfw");
    var body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      var model = MyAnimeListResponseModel.fromJson(body);
      setState(() {
        list = model;
      });
    } else {
      print("fetching error");
    }
  }
}
