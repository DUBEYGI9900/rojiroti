import 'package:flutter/material.dart' ;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'navbar.dart';

class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 139, 6),
              Colors.white,
            ], // Add at least two colors
          ),
        ),
        child: MasonryGridView.builder(
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/photo${index + 1}.jpg"),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: navbar(),
    );
  }
}