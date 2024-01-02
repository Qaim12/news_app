

import 'package:news_app/model/category_news_model.dart';
import 'package:news_app/model/news_channel_headlines_model.dart';

import '../repository/news_repository.dart';

class NewsViewModel{
  final repo = NewsRepository();
  Future<NewsChannelHeadlinesModel> fetchNewChannelHeadlineApi(String channelName)async{
    final response =await repo.fetchNewChannelHeadlineApi(channelName);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category)async{
    final response =await repo.fetchCategoriesNewsApi(category);
    return response;
  }
}