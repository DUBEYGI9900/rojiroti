// import 'package:flutter/material.dart';
// import 'package:sellkaro/home.dart';
// import 'package:sellkaro/music.dart';
// import 'package:sellkaro/photo.dart';

// class navbar extends StatefulWidget {
//   const navbar({super.key});

//   @override
//   State<navbar> createState() => _navbarState();
// }

// class _navbarState extends State<navbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
          
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [

//                 // Container 1
//                 Container(

//                   // width: MediaQuery.of(context).size.width * 0.28,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white38),
//                     borderRadius: BorderRadius.circular(5),
//                     color: Color.fromARGB(255, 255, 136, 0),
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 20, color: Colors.black.withOpacity(.1))
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           Navigator.of(context).pushReplacement(
//                             MaterialPageRoute(
//                               builder: (context) => homepage(),
//                             ),
//                           );
//                         },
//                         icon: Icon(Icons.history),
//                       ),
//                       Text(
//                         'Histroy',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(width: 20),

//                 // Container 2 with text
//                 Container(
//                   //  width: MediaQuery.of(context).size.width * 0.28,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white38),
//                     borderRadius: BorderRadius.circular(5),
//                     color: Color.fromARGB(255, 255, 136, 0),
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 20, color: Colors.black.withOpacity(.1))
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           Navigator.of(context).pushReplacement(
//                             MaterialPageRoute(
//                               builder: (context) => music(),
//                             ),
//                           );
//                         },
//                         icon: Icon(Icons.music_video_rounded),
//                       ),
//                       Text(
//                         'Music',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),

//                 SizedBox(width: 20),

//                 // Container 3 with text
//                 Container(
//                   //  width: MediaQuery.of(context).size.width * 0.28,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white38),
//                     borderRadius: BorderRadius.circular(5),
//                     color: Color.fromARGB(255, 255, 136, 0),
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 20, color: Colors.black.withOpacity(.1))
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           Navigator.of(context).pushReplacement(
//                             MaterialPageRoute(
//                               builder: (context) => Photo(),
//                             ),
//                           );
//                         },
//                         icon: Icon(Icons.photo_outlined),
//                       ),
//                       Text(
//                         'Photos',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sellkaro/home.dart';
import 'package:sellkaro/music.dart';
import 'package:sellkaro/photo.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _selectedIndex = 0;

  void _navigateToPage(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => homepage()),
          );
          break;
        case 1:
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => music()),
          );
          break;
        case 2:
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Photo()),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Container 1
                InkWell(
                  onTap: () {
                    _navigateToPage(0);
                  },
                  splashColor: Colors.orange.withAlpha(30),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white38),
                      borderRadius: BorderRadius.circular(5),
                      color: _selectedIndex == 0
                          ? Color.fromARGB(255, 255, 136, 0)
                          : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black.withOpacity(.1),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.history,
                          color: _selectedIndex == 0
                              ? Colors.white
                              : Colors.grey.shade700,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Histroy',
                          style:GoogleFonts.notoSerif(
                            
                           textStyle: TextStyle(
                            color: _selectedIndex == 0
                                ? Colors.white
                                : Colors.grey.shade700,
                          ),
                        ),)
                      ],
                    ),
                  ),
                ),
                
                // Container 2 with text
                
                InkWell(
                  onTap: () {
                    _navigateToPage(1);
                  },
                  splashColor: Colors.orange.withAlpha(30),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white38),
                      borderRadius: BorderRadius.circular(5),
                      color: _selectedIndex == 0
                          ? Color.fromARGB(255, 255, 136, 0)
                          : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black.withOpacity(.1),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.music_video_rounded,
                          color: _selectedIndex == 0
                              ? Colors.white
                              : Colors.grey.shade700,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Music',
                          style:GoogleFonts.notoSerif(
                            
                           textStyle: TextStyle(
                            color: _selectedIndex == 0
                                ? Colors.white
                                : Colors.grey.shade700,
                          ),
                        ),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _navigateToPage(2);
                  },
                  splashColor: Colors.orange.withAlpha(30),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white38),
                      borderRadius: BorderRadius.circular(5),
                      color: _selectedIndex == 0
                          ? Color.fromARGB(255, 255, 136, 0)
                          : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black.withOpacity(.1),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo_outlined,
                          color: _selectedIndex == 0
                              ? Colors.white
                              : Colors.grey.shade700,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Photos',
                          style:GoogleFonts.notoSerif(
                            
                           textStyle: TextStyle(
                            
                            color: _selectedIndex == 0
                                ? Colors.white
                                : Colors.grey.shade700,
                          ),)
                          
                           
                        ),
                      ],
                    ),
                  ),
                ),
                
               
                 ]                                    
                     ))]),
    );
                     
                     }}