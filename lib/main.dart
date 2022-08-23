// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_sample/routes/route-list.dart';
import 'package:login_sample/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Training",
      getPages: Routes.routes,
      initialRoute: RoutesList.LOGIN,
    );
  }
}
