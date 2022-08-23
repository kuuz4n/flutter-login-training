// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:login_sample/model/fetchImageResponseModel.dart';
import 'package:login_sample/screens/animeDetails/controller/animeDetailsController.dart';
import 'package:login_sample/services/apiService.dart';

class AnimeDetails extends GetView<AnimeDetailsController> {
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
                child: Image.network(controller.imageUrl,
                    height: 300, fit: BoxFit.fill),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                controller.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller.synopsis,
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
