// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/animelistController.dart';

class myAnimeListPage extends GetView<MyAnimelistController> {
  String animeTitle = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Anime")),
      body: animelistContainer(),
    );
  }

  Widget animelistContainer() {
    return Container(
      color: Color.fromRGBO(37, 36, 42, 1),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            style: GoogleFonts.exo(color: Colors.white, fontSize: 18),
            controller: controller.inputAnime,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Anime here!',
              hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(8.0),
              backgroundColor: Color.fromRGBO(53, 52, 59, 1),
              fixedSize: Size(200, 50),
              textStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
              elevation: 15,
            ),
            onPressed: controller.fetchAnime,
            child: const Text("Search")),
        const SizedBox(
          height: 20,
        ),
        Obx(() => Container(
              height: 400,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: controller.list.length,
                itemBuilder: ((context, index) {
                  return animeSearch(
                      controller.list[index].title,
                      controller.list[index].synopsis,
                      controller.list[index].imageUrl);
                }),
              ),
            ))
      ]),
    );
  }

  Widget animeSearch(String title, String synopsis, String imageUrl) =>
      Container(
        padding: EdgeInsets.all(16),
        color: Color.fromRGBO(37, 36, 42, 1),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(color: Colors.transparent))),
          onPressed: () =>
              controller.goToAnimeDetails(title, synopsis, imageUrl),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(imageUrl)),
        ),
      );
}
