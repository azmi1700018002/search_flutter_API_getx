import 'package:get/get.dart';
import 'package:search_flutter_getx/model/news_model.dart';
import 'package:search_flutter_getx/networking/news_networking.dart';

class NewsController extends GetxController {
  var newsList = List<Datum>.empty(growable: true).obs;

  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getnews();
  }

  void getnews() async {
    var news = await ApiService().getNews(Get.arguments);

    try {
      if (news != null) {
        newsList.addAll(news.data);
      }
    } finally {
      isLoading(false);
    }
  }
}
