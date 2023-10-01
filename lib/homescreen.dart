// ignore_for_file: prefer_const_constructors, camel_case_types, unused_local_variable, unused_field, no_leading_underscores_for_local_identifiers, prefer_typing_uninitialized_variables, dead_code, sort_child_properties_last, prefer_const_literals_to_create_immutables, unused_import

// import 'dart:js_interop';

import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  // int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(),
      backgroundColor: Color(0xFFEFEFEF),
      body:Stack(
        children: [
          Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _searchfield(),
            SizedBox(height: 20,),
            _line(),
            SizedBox(height: 20,),
            _browsetext(),
            SizedBox(height: 15,),
            _threebuttons(),
            SizedBox(height: 20,),
            _fourbuttons(),
            SizedBox(height: 20),
            _1outlinebutton(),
            SizedBox(height: 15),
            _2outlinebutton(),
            SizedBox(height: 45),
            _postad(),
            // Positioned(
            //   left: 0,
            //   right: 0,
            //   bottom: 0,
            //   child: BottomNavigationBar(
            //     items: [
            //       BottomNavigationBarItem(icon: Icon(Icons.home, color:  Colors.blue),
            //       label: 'Home'),
            //       BottomNavigationBarItem(
            //         icon: Icon(Icons.search),
            //         label: 'Search',
            //       ),
            //       BottomNavigationBarItem(
            //         icon: Icon(Icons.person),
            //         label: 'Profile',
            //       ),
            //     ],
                
            //   ),
            // ),
            
          
            
          
          
            
          
          
        //     Text("Congratulations, You are logged in", style: TextStyle(fontSize: 20),),
        //     SizedBox(height: 15,),
        //     ElevatedButton(onPressed: (){
        //       FirebaseAuth.instance.signOut();
        //       Navigator.pushNamed(context, "/login");
        
        
        
        //     },  child: Text("Logout", style: TextStyle(fontSize: 18),),style: ElevatedButton.styleFrom(
        // shape:LinearBorder(),
        // backgroundColor: Colors.green, )),
            
            
            
            ]
        
          
        
        ),
        Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home, color:  Colors.blue),
                  label: 'Home'),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
                
              ),
            ),
        ],
      ) ,
      
      
    
    );
  }

  // void _onitemtapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  //   if (index == 1) {
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => loginscreen()));
      
  //   }
  // }

  Container _postad() {
    return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( "Looking to sell out your property?",style: TextStyle(fontSize: 18),),
              SizedBox(height: 30),
              Container(
                width: 270,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  child: Text("Post an ad",style: TextStyle(fontSize: 16),),
                ),
              ),
            ],
            
            ),
          
          
          width: 350,
          height: 131,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 231, 230, 232),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.20000000298023224),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
        );
  }

  Row _1outlinebutton() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
                 child: Text(
                  "250 Sq.Yard",
                  style: TextStyle(
                    color: Color(0xFF55A9AF),
                  ),
                ),
                onPressed: () {},
              ),
              OutlinedButton(
                 child: Text(
                  "120 Sq. Yd",
                  style: TextStyle(
                    color: Color(0xFF55A9AF),
                  ),
                ),
                onPressed: () {},
              ),
              OutlinedButton(
                 child: Text(
                  "80 Sq.Yard",
                  style: TextStyle(
                    color: Color(0xFF55A9AF),
                  ),
                ),
                onPressed: () {},
              ),
          ],
        );
  }

Row _2outlinebutton() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
                 child: Text(
                  "New",
                  style: TextStyle(
                    color: Color(0xFF55A9AF),
                  ),
                ),
                onPressed: () {},
              ),
              OutlinedButton(
                 child: Text(
                  "Under 20 Lacs",
                  style: TextStyle(
                    color: Color(0xFF55A9AF),
                  ),
                ),
                onPressed: () {},
              ),
              OutlinedButton(
                 child: Text(
                  "On Installments",
                  style: TextStyle(
                    color: Color(0xFF55A9AF),
                  ),
                ),
                onPressed: () {},
              ),
          ],
        );
  }



  Row _fourbuttons() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(child: Text('Popular')),
              width: 71,
              height: 25,
              decoration: ShapeDecoration(
                color: Color.fromARGB(255, 218, 218, 218), // Set a valid color value
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0)
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                
              ),
            ),
            
            Container(
              child: Center(child: Text('Area Size')),
              width: 71,
              height: 25,
              decoration: ShapeDecoration(
                color: Color.fromARGB(255, 218, 218, 218), // Set a valid color value
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0)
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                
              ),
            ),
            Container(
              child: Center(child: Text('Location')),
              width: 71,
              height: 25,
              decoration: ShapeDecoration(
                color: Color.fromARGB(255, 218, 218, 218), // Set a valid color value
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0)
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                
              ),
            ),
            Container(
              child: Center(child: Text('Type')),
              width: 71,
              height: 25,
              decoration: ShapeDecoration(
                color: Color.fromARGB(255, 218, 218, 218), // Set a valid color value
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0)
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                
              ),
            ),
          ],
        );
  }

  Row _threebuttons() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            
            OutlinedButton(onPressed: (){}, child: Text("Home", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),),
            OutlinedButton(onPressed: (){}, child: Text("Plots",style: TextStyle(color:Colors.black,fontSize: 15))),
            OutlinedButton(onPressed: (){}, child: Text("Commercial", style: TextStyle(color:Colors.black,fontSize: 15))),
          ],
        );
  }

  Text _browsetext() => Text("Browse Property for Purchase", style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic,),);

  Container _line() {
    return Container(
          width: 370,
          decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
          side: BorderSide(
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Color.fromARGB(255, 213, 213, 213),
    ),
  ),
),
);
  }

  Container _searchfield() {
    return Container(
          margin: EdgeInsets.only(top:40 ,left: 20,right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for property ',
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
          ),
        );
  }

  AppBar app_bar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        
          color: Colors.black,
          icon: Icon(Icons.menu,),
          onPressed: () {
            // Navigate back to the previous screen
            //Navigator.pop(context);
          },
        ),
        //leadingWidth: 20,
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, color: Colors.black, size: 26,),
            // SizedBox(width: 7,),
            Text("Apna Ghar", style: TextStyle(color: Colors.black, fontSize: 22),),
          ],
        ),
        actions: [
  IconButton(
    color: Colors.black,
    
    icon: Icon(Icons.logout,),
    

    // You can use any logout icon you prefer
    onPressed: () {
      FirebaseAuth.instance.signOut();
      Navigator.pushNamed(context, "/login");
      // Add your logout logic here
      // For example, sign out the user
      // Navigator.of(context).pushReplacementNamed('/login');
    },
  ),
],
        //centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        
      );
  }
}









//-------------------------------x-------------------------------------------------x-------------------------------------------x----------------------------------x------------------



class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
      var _passwordVisible = false;
      
  @override
  Widget build(BuildContext context) {
    String password;
    String email;
   // var _passwordVisible = false;
    return Scaffold(
      appBar:AppBar(title: Text("Login Page"), backgroundColor: Colors.green,),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipOval(
              child: Image.asset("assets/images/logo.png",width: 200,height: 200,)
              ),

            Text("WELCOME TO LOGIN PAGE", style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold,color: Colors.green ),),

            Text("Enter your details below", style: TextStyle(fontSize: 15, color: Color(0xFF237724))),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Enter your Email",
                  labelText: "Email",
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.email)),
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email must not be empty';
              } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                return 'Enter a valid email';
              }
              return null;
                      },
                      onChanged: (value) => email = value,
                      ),
            ),



            SizedBox(height: 25,),



            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                  hintText: "Enter your Password",
                  labelText: "Password",
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    child: Icon(
                      _passwordVisible
                      ? Icons.visibility: Icons.visibility_off,
                    ),
                  )),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password must not be empty';
                } else if (value.length < 8) {
                  return 'Password must be at least 8 characters';
                } else if (!RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                    .hasMatch(value)) {
                  return 'Password must contain at least one uppercase, one lowercase, one digit, and one special character';
                }
                return null;
              },
              onChanged: (value) => password = value,
                      ),
                     
            ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25, top: 10),
                  child: ElevatedButton(onPressed: (){}, child: Text("LOGIN", style: TextStyle(fontSize: 16),), 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, shape: StadiumBorder())),
                )
                ]
                )
            

          ],
        ),
      ),
      
    );
  }
}



