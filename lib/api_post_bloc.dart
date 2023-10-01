// ignore_for_file: avoid_print

import 'dart:async';

import 'package:dio/dio.dart';

class ApiPostBloc {
  Dio dio = Dio();

  StreamController<PostDataHolder> postStreamController = StreamController();

  void loadPost() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts/1');

    Map<String, dynamic> resultData = response.data;

    print('Api Response');
    
    // print(resultData.toString());

    // print(resultData['userId']);

    PostDataHolder post = PostDataHolder(
      resultData['id'],
      resultData['userId'],
      resultData['title'],
      resultData['body'],
    );

    postStreamController.add(post);
    print(post.title);
  }
}

class PostDataHolder {
  int id;
  int userId;
  String title;
  String body;

  PostDataHolder(
    this.id,
    this.userId,
    this.title,
    this.body,
  );
}