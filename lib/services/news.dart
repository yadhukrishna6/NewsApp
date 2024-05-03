import 'dart:convert';

import 'package:newsapp/model/artical_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticalModel> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=apple&from=2024-05-01&to=2024-05-01&sortBy=popularity&apiKey=7ac8ae72078f483cbc6f46127371c268";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticalModel articalModel = ArticalModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );
          news.add(articalModel);
        }
      });
    }
  }
}
