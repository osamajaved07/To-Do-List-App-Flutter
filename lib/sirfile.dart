 import 'package:flutter/material.dart';

// void main() {
//   runApp(const AnimationApp());
// }

// class AnimationApp extends StatefulWidget {
//   const AnimationApp({super.key});

//   @override
//   State<AnimationApp> createState() => _AnimationAppState();
// }

// class _AnimationAppState extends State<AnimationApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Animation',
//       //home: AnimationControllerClass(),
//     );
//   }
// }

// class AnimationControllerClass extends StatefulWidget {
//   const AnimationControllerClass({super.key});

//   @override
//   State<AnimationControllerClass> createState() =>
//       _AnimationControllerClassState();
// }

// class _AnimationControllerClassState extends State<AnimationControllerClass>
//     with SingleTickerProviderStateMixin {
//   late final _animationController = AnimationController(
//     vsync: this,
//     duration: const Duration(milliseconds: 500),
//   );

//   final Tween<double> _tween = Tween(
//     begin: 0,
//     end: 1,
//   );

//   late final Animation<double> _animation =
//       _tween.animate(_animationController);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Animation'),
//       ),
//       body: Stack(
//         children: [
//           AnimatedBuilder(
//             animation: _animation,
//             builder: (context, child) {
//               return Container(
//                 width: _animation.value * 200,
//                 height: 200,
//                 color: Colors.blue,
//               );
//             },
//           ),
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 _animationController.reverse();
//               },
//               child: Text('Animate'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class AnitatedWidgetsClass extends StatefulWidget {
  const AnitatedWidgetsClass({super.key});

  @override
  State<AnitatedWidgetsClass> createState() => _AnitatedWidgetsClassState();
}

class _AnitatedWidgetsClassState extends State<AnitatedWidgetsClass> {
  double containerWidth = 200;

  Color containerColor = Colors.black;

  bool animationCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 500),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (animationCompleted) {
                    containerWidth = 200;
                    containerColor = Colors.black;
                  } else {
                    containerWidth = MediaQuery.of(context).size.width;
                    containerColor = Colors.amber;
                  }
                  animationCompleted = !animationCompleted;
                });
              },
              child: AnimatedContainer(
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 700),
                width: containerWidth,
                height: 200,
                color: containerColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final lightTheme = const ColorScheme(
//     brightness: Brightness.light,
//     primary: Color(0xFF286851),
//     onPrimary: Color(0xFFFFFFFF),
//     secondary: Color(0xFFC8522B),
//     onSecondary: Color(0xFFFFFFFF),
//     error: Colors.red,
//     onError: Colors.white,
//     background: Colors.white,
//     onBackground: Colors.black,
//     surface: Colors.white,
//     onSurface: Colors.black,
//   );

//   final darkTheme = const ColorScheme(
//     brightness: Brightness.dark,
//     primary: Color(0xFF61B59D),
//     onPrimary: Color(0xFF212121),
//     secondary: Color(0xFFC8522B),
//     onSecondary: Color(0xFFFFFFFF),
//     error: Colors.red,
//     onError: Colors.white,
//     background: Colors.white,
//     onBackground: Colors.black,
//     surface: Colors.white,
//     onSurface: Colors.black,
//   );

//   late ColorScheme appTheme;

//   @override
//   void initState() {
//     super.initState();

//     appTheme = lightTheme;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: appTheme,
//         appBarTheme: AppBarTheme(
//           backgroundColor: appTheme.primary,
//           centerTitle: true,
//           foregroundColor: appTheme.onPrimary,
//           elevation: 2,
//         ),
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: appTheme.primary,
//           foregroundColor: appTheme.onPrimary,
//           iconSize: 40,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//           // shape: BeveledRectangleBorder(
//           //   borderRadius: BorderRadius.circular(8),
//           // ),
//         ),
//       ),
//       home: MyHomePage(
//         title: 'Theming',
//         onThemeChanged: () {
//           setState(
//             () {
//               if (appTheme == lightTheme) {
//                 appTheme = darkTheme;
//               } else {
//                 appTheme = lightTheme;
//               }
//             },
//           );
//         },
//       ),
//       // home: Scaffold(
//       //   appBar: AppBar(
//       //     title: Text('Theming'),
//       //   ),
//       //   body: const Center(
//       //     child: Column(
//       //       mainAxisAlignment: MainAxisAlignment.center,
//       //       children: <Widget>[
//       //         Text(
//       //           'You have pushed the button this many times:',
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       //   floatingActionButton: FloatingActionButton(
//       //     onPressed: () {
//       //       setState(() {
//       //         if (appTheme == lightTheme) {
//       //           appTheme = darkTheme;
//       //         } else {
//       //           appTheme = lightTheme;
//       //         }
//       //       });
//       //     },
//       //     tooltip: 'Theming',
//       //     child: appTheme == lightTheme ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
//       //   ), // This trailing comma makes auto-formatting nicer for build methods.
//       // ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//     required this.title,
//     required this.onThemeChanged,
//   });

//   final String title;
//   final Function() onThemeChanged;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           widget.onThemeChanged();
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }

//   void justAFuction() {}
// }
