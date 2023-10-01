// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/api_bloc.dart';



class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  ApiBloc bloc = ApiBloc();

  @override
  void initState (){
    super.initState();
    bloc.loadPost();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("API PAGE"),) ,

      body: StreamBuilder(
        stream: bloc.postStreamController.stream,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.only(right:8.0, left: 12, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("POST ID:", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Text('${snapshot.data?.id}',style: TextStyle(fontSize: 18),),
                SizedBox(height: 10,),
          
          
                Text("POST TITLE:", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Text('${snapshot.data?.title}',style: TextStyle(fontSize: 18),),
                SizedBox(height: 10,),
          
          
                Text("POST BODY:", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Text('${snapshot.data?.body}',style: TextStyle(fontSize: 18),),
                SizedBox(height: 10,),
          
          
                Text("POST USERID:", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Text('${snapshot.data?.userId}',style: TextStyle(fontSize: 18),),
                SizedBox(height: 10,),
                
              ],
            ),
          );
        }
      ),

    );
  }
}