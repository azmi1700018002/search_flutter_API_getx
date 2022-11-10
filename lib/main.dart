import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_flutter_getx/view/news_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NewsSearch(
          category: '',
        ));
  }
}
