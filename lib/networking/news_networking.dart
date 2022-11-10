import 'package:search_flutter_getx/model/news_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  var client = http.Client();

  Future<News?> getNews(String query) async {
    var response = await client
        .get(Uri.parse('http://192.168.100.215:8080/search/$query'));
    // 'https://newsapi.org/v2/everything?q=$query&apiKey=a8f4865d4cea4cd8ac1b34a197d22d99'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return newsFromJson(jsonString);
    } else {
      throw Exception('Failed to load');
    }
  }
}
