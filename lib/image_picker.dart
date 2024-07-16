//
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class ImagePickerTutorial extends StatefulWidget {
//   const ImagePickerTutorial({Key? key}) : super(key: key);
//
//   @override
//   _ImagePickerTutorialState createState() => _ImagePickerTutorialState();
// }
//
// class _ImagePickerTutorialState extends State<ImagePickerTutorial> {
//   List<File> pickedImages = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Image Picker"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: pickedImages.isNotEmpty
//                   ? GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                 ),
//                 itemCount: pickedImages.length,
//                 itemBuilder: (context, index) {
//                   return Image.file(
//                     pickedImages[index],
//                     fit: BoxFit.cover,
//                   );
//                 },
//               )
//                   : Container(
//                 color: Colors.blueGrey[100],
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.width * (4 / 3),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(48.0),
//               child: ElevatedButton(
//                 onPressed: () async {
//                   final ImagePicker _picker = ImagePicker();
//                   final List<XFile>? images = await _picker.pickMultiImage();
//                   if (images != null && images.isNotEmpty) {
//                     setState(() {
//                       pickedImages = images.map((image) => File(image.path)).toList();
//                     });
//                   }
//                 },
//                 child: const Text("Pick Images"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//


import 'dart:io';

import 'package:application/sell/car/set_price.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(const MaterialApp(home: ImagePickerTutorial()));

class ImagePickerTutorial extends StatefulWidget {
  const ImagePickerTutorial({Key? key}) : super(key: key);

  @override
  _ImagePickerTutorialState createState() => _ImagePickerTutorialState();
}

class _ImagePickerTutorialState extends State<ImagePickerTutorial> {
  List<File> pickedImages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        title:              Text("Upload Your Images",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: pickedImages.isNotEmpty
                  ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: pickedImages.length,
                itemBuilder: (context, index) {
                  return Image.file(
                    pickedImages[index],
                    fit: BoxFit.cover,
                  );
                },
              )
                  : Container(
                color: Colors.blueGrey[100],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * (4 / 3),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.center ,
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                  InkWell(
                    onTap: () async {
                        final ImagePicker _picker = ImagePicker();
                        final List<XFile>? images = await _picker.pickMultiImage();
                        if (images != null && images.isNotEmpty) {
                          setState(() {
                pickedImages = images.map((image) => File(image.path)).toList();
                          });
                        }
                      },

                    child: Container(
                      width: 100,
height: 35,
decoration: BoxDecoration(
  border:Border.all(
    width: 1,
 
  ),
  borderRadius: BorderRadius.circular(5)
),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Pick Images",)),
                    ),
                    ),

                InkWell(
                  onTap: () async {
                    if (pickedImages.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => set_price()),
                      );
                    }
                  },

                  child: Container(
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                        border:Border.all(
                          width: 1,

                        ),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("Next",)),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}


