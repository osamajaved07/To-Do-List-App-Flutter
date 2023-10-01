// ignore_for_file: prefer_const_constructors, camel_case_types, dead_code, prefer_const_literals_to_create_immutables, unused_local_variable, unused_import, avoid_print

// import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';


class MyTodos extends StatefulWidget {
  const MyTodos({super.key});

  @override
  State<MyTodos> createState() => _MyTodosState();
}

class _MyTodosState extends State<MyTodos> {
  String input = '';
  // List <String> todos= [];
  
  createtodos(){
    DocumentReference documentReference = FirebaseFirestore.instance.collection('MyTodos').doc(input);
    Map <String, String> todos = {
      "todotitle" : input
    };
    documentReference.set(todos).whenComplete((){
      print('$input created');
    });

  }
  deletetodos(item){
    DocumentReference documentReference = FirebaseFirestore.instance.collection('MyTodos').doc(item);

    documentReference.delete().whenComplete((){
      print('$item deleted');
    });


  }



  // @override
  // void initState() {
    
  //   super.initState();
  //   todos.add('Item1');
  //   todos.add('Item2');
  //   todos.add('Item3');
  //   todos.add('Item4');
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: 
      (){
        showDialog(context: context, builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            title: Text("Add ToDo List"),
            content: TextField(
              onChanged: (String value) {
                input = value;

              },
            ),
            actions: [
              TextButton(onPressed: (){
                createtodos();
                // setState(() {
                //   todos.add(input);
                // });
                Navigator .of(context).pop();


              }, child: Text('Add'),)

            ],
          );
          Navigator .of(context).pop();
          
        });
      },
      child: Icon(Icons.add),
      ),




      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("MyTodos").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
      return CircularProgressIndicator();
    }
     var todosData = snapshot.data?.docs ?? []; // Add the null check here
        return ListView.builder(
          shrinkWrap: true,
          itemCount: todosData.length,
          itemBuilder: ( context, index  ){
            DocumentSnapshot documentSnapshot = todosData[index];
            return Dismissible(key: Key(index.toString()), child: Card(
              elevation: 5,
              margin: EdgeInsets.only(top: 16,left: 12,right: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(documentSnapshot["todotitle"]),
                trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.redAccent,),
                  onPressed: (){
                    deletetodos(documentSnapshot['todotitle']);
                    // setState(() {
                    //   todos.removeAt(index);
                    //   });

                 },),
          ),
        ));

      });

      })
    );
  }
}