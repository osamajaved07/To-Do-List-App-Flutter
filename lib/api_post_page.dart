// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:statemanagement/api_post_bloc.dart';
import 'api_post_bloc.dart';


class ApiPostPage extends StatefulWidget {
  const ApiPostPage({super.key});

  @override
  State<ApiPostPage> createState() => _ApiPostPageState();
}

class _ApiPostPageState extends State<ApiPostPage> {
  ApiPostBloc bloc = ApiPostBloc();

  @override
  void initState() {
    super.initState();

    bloc.loadPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Post'),
      ),
      body: StreamBuilder(
          stream: bloc.postStreamController.stream,
          builder: (context, snapshot) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right:8, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Post Id: ',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${snapshot.data?.id}',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Post Title: ',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${snapshot.data?.title}',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Post body: ',
                      style: TextStyle(fontSize: 25,  fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${snapshot.data?.body}',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Post userId: ',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${snapshot.data?.userId}',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
