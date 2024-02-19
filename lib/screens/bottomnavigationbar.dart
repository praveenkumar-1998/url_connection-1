
// import 'package:flutter/material.dart';
// import 'package:url_connection/screens/dashboard.dart';
// import 'package:url_connection/screens/screen2.dart';
// import 'package:url_connection/screens/screen3.dart';
// import 'package:url_connection/screens/screen4.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex=0;
//  static const List<Widget> _widgetOptions=<Widget>[
//   Dashboard(),
//   Screen2(),
//   Screen3(),
//   Screen4(),
 
//   ];
//     void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//    var size=MediaQuery.sizeOf(context);
//     return SafeArea(
//       child: Scaffold(
//         body:Center(
//           child:_widgetOptions.elementAt(_selectedIndex),
//         ),
//         bottomNavigationBar:  size.width<600  ? BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label:'screen2'),
//             BottomNavigationBarItem(icon: Icon(Icons.people_outline),label:'screen3'),
//             BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label:'screen4')
            
//           ],
         
//            currentIndex: _selectedIndex,
//           selectedItemColor: const Color.fromARGB(255, 0, 68, 215),
//           unselectedItemColor: Colors.grey,
//           onTap: _onItemTapped,
//         ):null,
//       ),
//     );
//     }
// }

