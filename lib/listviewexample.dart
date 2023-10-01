// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants/UsersData.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  var dataList = UserData.users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Page", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(10), // Adjust the radius as needed
    ),
      ),
       backgroundColor: Color.fromRGBO(24, 228, 255, 1),),
      body: Scrollbar(
        thumbVisibility: true,

        child: ListView.builder(
          itemBuilder: (context, index){
            var item = dataList[index]; 
            return Card(
              elevation: 10,
              margin: EdgeInsets.only(top: 13,right: 10, left: 10),
              color: Color.fromRGBO(227, 252, 243, 1),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(item["image"]),
                    backgroundColor: Color.fromARGB(255, 107, 190, 249),
                  ),
                  title: Text("${item['firstName']} ${item['lastName']}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18)),
                  subtitle: Row(children: [
                    Icon(Icons.phone_android_outlined, size: 16,),
                    SizedBox(width: 2,),
                    Text(item['phone'], style: TextStyle( fontSize: 14), )
                  ],),
                  trailing: IconButton (icon: Icon(Icons.delete_outline), onPressed: () {
                    showDialog(context: context,
                     builder: (BuildContext){
                      return AlertDialog(
                        title: Text("Delete Item"),
                        content: Text("Are you sure you want to delete this item?"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Cancel"),),

                          TextButton(
                            child: Text("Delete"),
                            onPressed:  (){
                              setState((){
                                dataList.removeAt(index);
                              });
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                     },
                     );
      
                    },),
              
              
              
                        ),
              ));
          },
          itemCount: dataList.length,
      
        ),
      ),
      
    );
  }
}