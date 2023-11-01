import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modul3prak/app/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
        title: "Application",
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesClass.getHomeRoute(),
        getPages: RoutesClass.routes),
  );
}
