// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
//
// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({super.key});
//
//   @override
//   State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
// }
//
// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//         border: Border.all(color: Colors.black26, width: 1), // Thin black border
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             spreadRadius: 2,
//             offset: const Offset(0, 5),
//           ),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(30),
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//           child: BottomNavigationBar(
//             backgroundColor: Colors.white,
//             elevation: 0,
//             currentIndex: _selectedIndex,
//             onTap: _onItemTapped,
//             selectedItemColor: Colors.purple,
//             unselectedItemColor: Colors.black54,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home, size: 30),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings, size: 30),
//                 label: 'Settings',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite_border, size: 30),
//                 label: 'Favorites',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person_outline, size: 30),
//                 label: 'Profile',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
