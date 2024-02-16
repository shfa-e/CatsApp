import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';


// widget that shows the cats information
class catDetailWidget extends StatelessWidget {
  final Cat cat;
  const catDetailWidget({
    super.key,
    required this.cat 
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //img
        Image.network(
          width: double.infinity,
          fit: BoxFit.cover,
          cat.imageLink          ),
        //name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cat.name,
            style: TextStyle(
              fontSize: 32, 
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
              fontFamily: 'Times New Roman',
              ),
            ),
        ),
    
        //info
        Text('Origin: ${cat.origin}',
        style: const TextStyle(
              fontSize: 21, 
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              fontFamily: 'Times New Roman',
              )
              ),

        Text('Max Weght: ${cat.maxWeight}',
        style: const TextStyle(
              fontSize: 21, 
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              fontFamily: 'Times New Roman',
              )
        ),

        Text('Min Weight: ${cat.minWeight}',
        style: const TextStyle(
              fontSize: 21, 
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              fontFamily: 'Times New Roman',
              )
              ),

        Text('Length: ${cat.length}',
        style: const TextStyle(
              fontSize: 21, 
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              fontFamily: 'Times New Roman',
              )
              ),

        Text('Intelligence: ${cat.intelligence}',
        style: const TextStyle(
              fontSize: 21, 
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              fontFamily: 'Times New Roman',
              )
        ),
      ],
    )
        );
  }
}