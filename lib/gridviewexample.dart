// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';


import 'constants/UsersData.dart';

class GridviewExample extends StatefulWidget {
  const GridviewExample({super.key});

  @override
  State<GridviewExample> createState() => _GridviewExampleState();
}

class _GridviewExampleState extends State<GridviewExample> {
  var dataList = UserData.users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Page", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(10), // Adjust the radius as needed
    ),
      ),
       backgroundColor: Color.fromRGBO(24, 228, 255, 1),),
       body: Scrollbar(
        thumbVisibility: true,
         child: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
          (crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 7/10),
          itemCount: dataList.length, 
          itemBuilder: (context,index){
            var item = dataList[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(16),
                    child:Image(image: NetworkImage(item['image']),fit: BoxFit.cover,),),
       
                Text("${item['firstName']} ${item['lastName']}"),
                Text("${item['phone']}"),
                Text(item['email'])
       
                ],
              ),
            );
          }),
         
         ),
       ),


    );
  }
}