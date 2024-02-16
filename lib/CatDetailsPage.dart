import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/widgets/CatDetails.dart';

class CatDetailsPage extends StatelessWidget {
  final Cat cat;
  const CatDetailsPage({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cat.name,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
                color: Colors.white,
            )
          
                ),
        ),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined, color: Colors.white,))]
      ),

      body: catDetailWidget(
        cat: cat,
      )
    );
  }
}

