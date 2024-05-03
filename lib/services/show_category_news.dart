import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/model/show_category.dart';

class ShowCategoryNews {
  List<ShowCategoryModel> categories = [];
  Future<void> getcategoriesNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=7ac8ae72078f483cbc6f46127371c268";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ShowCategoryModel CategoryModel = ShowCategoryModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );
          categories.add(CategoryModel);
        }
      });
    }
  }
}
