import 'package:flutter/material.dart';
import 'package:my_cats/CatDetailsPage.dart';
import 'package:my_cats/CatsHomePage.dart';
import 'package:my_cats/data/allCats.dart';
import 'package:my_cats/model/cat.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  // //parse cat from json to cat object
  // final listOfCatsAsJson = allCats;
  // final listOfCatsAsOjects = <Cat>[];
  // for (var i = 0; i< listOfCatsAsJson.length; i++){
  //   final catsAsJson = listOfCatsAsJson[i];
  //   final catAsObject = Cat.fromJson(catsAsJson);
  //   listOfCatsAsOjects.add(catAsObject);
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomePage(),
      // routes: {
      //   '/': (context)=> CatsHomePage(),
      //   'details': (context)=> CatDetailsPage(cat: cat)
      // },
    );
  }
}
