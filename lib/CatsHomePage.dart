import 'package:flutter/material.dart';
import 'package:my_cats/main.dart';
import 'package:my_cats/widgets/CatCard.dart';

class CatsHomePage extends StatelessWidget {
  const CatsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              "Type of Cats",
              style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
              color: Colors.white,
              )
              ),
        ),

        backgroundColor: Colors.deepPurpleAccent,
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, color: Colors.white,))],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemCount: cats.length, 
        itemBuilder: (context, index) {  
          final cat = cats[index];
          return CatCard(cat: cat);
        }
        )

     );
  }
}
