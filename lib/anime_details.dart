// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_sample/model/fetchImageResponseModel.dart';
import 'package:login_sample/services/apiService.dart';

class AnimeDetails extends StatelessWidget {
  String title, synopsis, imgUrl;
  AnimeDetails(
      {Key? key,
      required this.title,
      required this.synopsis,
      required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anime Details")),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(),
          Column(
            children: [
              Container(
                child: Image.network(imgUrl, height: 300, fit: BoxFit.fill),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  synopsis,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
