import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_flutter_getx/controller/news_controller.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  NewsController n = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cari Berita'),
        ),
        body: Obx(() => n.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: n.newsList.length,
                itemBuilder: (context, index) {
                  return Card(
                      // child: Column(children: [
                      // Image.network(n.newsList[index].urlToImage),
                      // Text(n.newsList[index].title),
                      // const SizedBox(
                      //   height: 8,
                      // ),
                      child: ListTile(
                    title: Text(n.newsList[index].kontenMenu.toString(),
                        style: const TextStyle(color: Colors.black)
                        // style: heading1,
                        ),
                    trailing: n.newsList[index].kategoriNama == 'Produk'
                        ? const Text('Produk')
                        : const Text('Menu'),
                    textColor: Colors.black,
                    onTap: () {
                      // if (snapshot.data![index].kategoriNama ==
                      //     'Produk') {
                      //   Get.toNamed(
                      //     Routes.DETAIL_PRODUCT,
                      //     arguments: snapshot.data![index],
                      //   );
                      // } else {
                      //   Get.toNamed(Routes.LAYER_TWO,
                      //       arguments: snapshot.data![index]);
                      // }
                    },
                  )
                      // Text(n.newsList[index].kontenMenu)
                      // ]),
                      );
                  // return Card(
                  //   clipBehavior: Clip.antiAlias,
                  //   // color: melon,
                  //   margin: const EdgeInsets.all(16),
                  //   child: ListTile(
                  //     // leading: data == '7'
                  //     //     ? const Icon(FontAwesomeIcons.wallet,
                  //     //         color: Colors.white)
                  //     //     : data == '8'
                  //     //         ? const Icon(FontAwesomeIcons.creditCard,
                  //     //             color: Colors.white)
                  //     //         : data == '9'
                  //     //             ? const Icon(
                  //     //                 FontAwesomeIcons.servicestack,
                  //     //                 color: Colors.white)
                  //     //             : const Icon(FontAwesomeIcons.wallet,
                  //     //                 color: Colors.white),
                  //     title: Text(
                  //       n.newsList[index].kontenMenu.toString(),
                  //       // style: heading1,
                  //     ),
                  //     trailing: n.newsList[index].kategoriNama == 'Produk'
                  //         ? const Text('Produk')
                  //         : const Text('Menu'),
                  //     textColor: Colors.white,
                  //     onTap: () {
                  //       // if (snapshot.data![index].kategoriNama ==
                  //       //     'Produk') {
                  //       //   Get.toNamed(
                  //       //     Routes.DETAIL_PRODUCT,
                  //       //     arguments: snapshot.data![index],
                  //       //   );
                  //       // } else {
                  //       //   Get.toNamed(Routes.LAYER_TWO,
                  //       //       arguments: snapshot.data![index]);
                  //       // }
                  //     },
                  //   ),
                  // );
                })));
  }
}
