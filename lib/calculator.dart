// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => calculatorState();
}

class calculatorState extends State<calculator> {
  var firstController = TextEditingController();
  var secondController = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("CALCULATOR", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 21, 40, 74)),), 
      backgroundColor: Color(0xFF01EAFF),
      centerTitle: true,),
      body: Padding(
        padding: EdgeInsets.only(top: 55,left: 15,right: 15),
        child: Column(
          children: [
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter first number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Second number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: 18,),

            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                    firstController.clear();
                    secondController.clear();
                
                    setState(() {
                      result  ='';
                    });
                  }, child: Text("Clear"), style: ElevatedButton.styleFrom(
                    primary:Color(0xA801EAFF)
                  ), ),

                SizedBox(width: 15,),


                ElevatedButton(onPressed: (){
                  calculate('+');
                }, child: Text("+", style: TextStyle(fontSize: 20),), style: ElevatedButton.styleFrom(
                    primary:Color(0xA801EAFF)
                  ),),


                SizedBox(width: 15,),

                ElevatedButton(onPressed: (){
                  calculate("-");

                }, child: Text("-", style: TextStyle(fontSize: 30,)), style: ElevatedButton.styleFrom(
                    primary:Color(0xA801EAFF)
                  )),


                SizedBox(width: 15,),


                ElevatedButton(onPressed: (){
                  calculate("*");

                }, child: Text("*", style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(
                    primary:Color(0xA801EAFF)
                  )),


                SizedBox(width: 15,),


                ElevatedButton(onPressed: (){
                  calculate("/");

                }, child: Text("/", style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(
                    primary:Color(0xA801EAFF)
                  )),
                
              ],
            ),
            SizedBox(height: 20,),
            Text(result, style: TextStyle(fontSize: 30),)
          ],
          
        ),
      ),
    );
  }
  calculate( String opr ){

    String first = firstController.text.trim();
    String second = secondController.text.trim();

    if( first.isEmpty || second.isEmpty){
      Fluttertoast.showToast(msg: 'Please provide both numbers', textColor: Color.fromARGB(255, 255, 255, 255), backgroundColor: const Color.fromARGB(255, 6, 138, 247));
    }
    else{
      int res = 0;
      switch(opr){
        case '+':
          res = int.parse(first) + int.parse(second);
          break;
        case '-':
          res = int.parse(first) - int.parse(second);
          break;
        case '*':
          res = int.parse(first) * int.parse(second);
          break;
        case '/':
          res = int.parse(first) ~/ int.parse(second);
          break;
      }

      setState((){
        result = '$res';
      });
    }
  }
}
