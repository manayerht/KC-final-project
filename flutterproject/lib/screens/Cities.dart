import 'package:flutter/material.dart';
import 'package:flutterproject/Pagen1.dart';
import 'package:flutterproject/models/Allcountries.dart';

class CitiesScreen extends StatelessWidget {
   CitiesScreen({super.key});
  var cities = [
    Cities(
      name: "PARIS ➡ The capital city known for its iconic landmarks",
      ),
      Cities(
      name: "MARSEILLE ➡ vibrant port city on the Mediterranean coast with a rich history and diverse culture",

      ),
      Cities(
      name: "LYON ➡ Renowned for its culinary scene and historical architecture, Lyon is often called the food capital of France.",
      ),
      Cities(
      name: "NICE ➡ Located on the French Riviera, Nice offers beautiful beaches, a Mediterranean climate, and a charming old town",
      ),
      Cities(
      name: "AIX-EN-PROVENCE ➡ This charming Provencal town is known for its sunny weather, fountains, and artistic heritage",
      ),
      Cities(
      name: "TOULOUS ➡ Known as La Ville Rose (The Pink City) due to its terracotta buildings, Toulouse is a hub of aerospace and technology",
      ),
      Cities(
      name: "NANTES ➡ A city with a rich maritime history and a vibrant arts scene, Nantes is located in western France",
      ),
      

  ];


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
    
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text("Cities"),
          backgroundColor: Colors.grey[500],
        ),
        body: ListView(children: [
          CitiesList(cities: cities[0],),
          CitiesList(cities: cities[1],),
          CitiesList(cities: cities[2],),
          CitiesList(cities: cities[3],),
          CitiesList(cities: cities[4],),
          CitiesList(cities: cities[5],),
          CitiesList(cities: cities[6],),
          
          ElevatedButton(onPressed: (){
      Navigator.pop(context,);
      
      }, child: Text("back"),
      
    )
          
          ])
        
         
        
        
    ));
  }
}

class CitiesList extends StatelessWidget {
   CitiesList({
    required this.cities
  });
  Cities cities;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
      child: ListTile(
        tileColor: Colors.grey[300],
        title: Container(child: Text(
          cities.name)),),
    );
  }
}