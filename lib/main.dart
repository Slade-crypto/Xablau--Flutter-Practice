import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xablau/http/http_page.dart';
import 'package:xablau/paginas/home_principal.dart';
import 'package:xablau/paginas/sandbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => SandBox(),
          children: [
            GetPage(name: '/http', page: () => HttpPage()),
          ],
        ),
      ],
    );
  }
}
