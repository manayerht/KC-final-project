import 'package:flutter/material.dart';
import 'package:flutterproject/models/Allcountries.dart';
import 'package:flutterproject/screens/page2.dart';

class RestScreen extends StatelessWidget {
   RestScreen({super.key});
   var rests = [
    Restaurants(name: "GUY SAVOY ➡ A Michelin three-star restaurant in Paris offering gourmet French cuisine "),
     Restaurants(name:"Le Bernardin ➡ Another Michelin three-star restaurant, specializing in seafood and French contemporary cuisine" ),
      Restaurants(name: "Paul Bocus ➡ Named after the legendary chef, this restaurant in Lyon has maintained three Michelin stars for decades and is a bastion of French gastronomy"),
       Restaurants(name: "Auberge du Vieux Puits ➡ Located in a remote village, this Michelin three-star restaurant in the Languedoc region offers innovative Mediterranean cuisine"),
        Restaurants(name:"Alain Ducasse au Plaza Athénée ➡ A renowned Michelin three-star restaurant with a focus on contemporary French cuisine " ),
         Restaurants(name:"Le Jules Verne ➡ Perched in the Eiffel Tower, this Michelin-starred restaurant offers fine dining with breathtaking views of Paris" ),
          Restaurants(name: "Bras ➡  Located in a picturesque countryside setting, Bras is famous for its modern French cuisine and has earned three Michelin stars"),
           Restaurants(name:"Mirazur ➡ A Michelin three-star restaurant on the French Riviera, known for its innovative, nature-inspired cuisine" ),
            Restaurants(name:"Arpège ➡ A three-star Michelin restaurant with a focus on vegetarian and sustainable cuisine" ),
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
          title: Text("Restaurants"),
          backgroundColor: Colors.grey[500],
        ),
        body: ListView(children: [
          RastsList(restaurants: rests[0],),
          RastsList(restaurants: rests[1],),
          RastsList(restaurants: rests[2],),
          RastsList(restaurants: rests[3],),
          RastsList(restaurants: rests[4],),
          RastsList(restaurants: rests[5],),
          RastsList(restaurants: rests[6],),
          RastsList(restaurants: rests[7],),
          RastsList(restaurants: rests[8],),
          
ElevatedButton(onPressed: (){
      Navigator.pop(context,);
      
      }, child: Text("back"),
      
    )

        
        
        ]),
        )
      
  );}
}

class RastsList extends StatelessWidget {
   RastsList({
    required this.restaurants
    
  });
  Restaurants restaurants;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
      child: ListTile(
        tileColor: Colors.grey[300],
        title: Container(child: Text(restaurants.name)),
      ),
     
           
           
    );
    
    
  }
}