import 'package:flutter/material.dart';
import 'package:my_cats/CatDetailsPage.dart';
import 'package:my_cats/model/cat.dart';

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({
    super.key, 
    required this.cat
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailsPage(cat: cat);
        }));
      },
      child: Card(
         child: Column(
       children: [
         Expanded(
          //cat img
           child: Image.network(
             width: double.infinity,
             fit: BoxFit.cover,
             cat.imageLink
           ),
           ),
           //cat name
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
              cat.name, 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                fontFamily: 'Times New Roman',
                ),
                ),
           )
         ],
       )),
    );
  }
}