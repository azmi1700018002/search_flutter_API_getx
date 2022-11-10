import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'news_view.dart';

class NewsSearch extends StatefulWidget {
  String category;
  NewsSearch({super.key, required this.category});

  @override
  // ignore: library_private_types_in_public_api
  _NewsSearchState createState() => _NewsSearchState();
}

class _NewsSearchState extends State<NewsSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cari News"),
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
          children: [
            Image.asset(
              'assets/search.png',
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: TextField(
                  decoration: const InputDecoration(
                      hintText: 'Cari Menu', border: InputBorder.none),
                  onChanged: (newValue) {
                    setState(() {
                      widget.category = newValue;
                    });
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(const NewsView(), arguments: widget.category);
                },
                child: const Icon(Icons.search))
          ],
        ))));
  }
}
