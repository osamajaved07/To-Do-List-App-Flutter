// ignore_for_file: unused_local_variable, avoid_print, unused_import

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:my_app/api_post_bloc.dart';

class ApiBloc{
  Dio dio = Dio();
  StreamController<PostDataHolder>postStreamController = StreamController();

  void loadPost() async{
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts/1');
    Map<String , dynamic> resultData = response.data;
    print("Api Response");

    PostDataHolder post = PostDataHolder(
      resultData['id'],
      resultData['userId'],
      resultData['body'],
      resultData['title']
    );
    postStreamController.add(post);
    print(post.title);
    
  }
}
class PostDataHolder{
  int id;
  int userId;
  String body;
  String title;

  PostDataHolder(
    this.id,
    this.userId,
    this.body,
    this.title
  );
}