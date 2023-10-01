// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class concatenationState extends StatefulWidget {
  const concatenationState({super.key});

  @override
  State<concatenationState> createState() => _concatenationStateState();
}

class _concatenationStateState extends State<concatenationState> {
  var firstController= TextEditingController();
  var middleController= TextEditingController();
  var SecondController= TextEditingController();
  var fullname  ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Concatenation App', style:TextStyle(color: Color.fromARGB(255, 255, 255, 255),)),
      backgroundColor: Color.fromARGB(255, 206, 47, 255),
      centerTitle: true,),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: firstController,  
              decoration: InputDecoration(
                hintText: 'Enter your First Name',
                labelText: 'First Name',
                
                icon: Icon(Icons.person)
              ),
              
            ),
            SizedBox(height: 15,),

            TextField(
              controller: middleController,  
              decoration: InputDecoration(
                hintText: 'Enter your Middle Name',
                labelText: 'Middle Name',
                
                icon: Icon(Icons.person)
              ),
              
            ),
            SizedBox(height: 15,),
      
      
            TextField(
              controller: SecondController,  
              
              decoration: InputDecoration(
                hintText: 'Enter Your Last Name ',
                labelText: 'Last Name',
                icon: Icon(Icons.person),
                ),
                // validator: (value){
                //    if(value == null || value.isEmpty){
                //     return 'Please Enter Your Name';
                //     }
                //     return null;
                //     }, 
                ),
            SizedBox(height: 25,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    firstController.clear();
                    middleController.clear();
                    SecondController.clear();
                
                    setState(() {
                      fullname  ='';
                    });
                  }, child: Text("Clear"), style: ElevatedButton.styleFrom(
                    primary:Color.fromARGB(132, 206, 47, 255)
                  ), ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    String firstName = firstController.text.trim();
                    String middleName = middleController.text.trim();
                    String lastName = SecondController.text.trim();
                    if (firstName.isEmpty || lastName.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please enter both First and Last Names.')));
                      
                
                    }else{
                      setState(() {
                        fullname = '$firstName $middleName $lastName'; 
                      });
                    }
                  }, child: Text("Combine"), style: ElevatedButton.styleFrom(
                    primary:Color.fromARGB(132, 206, 47, 255)
                  ),),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(fullname)
            
          ],
        ),
      ),
    );
    
  }
}