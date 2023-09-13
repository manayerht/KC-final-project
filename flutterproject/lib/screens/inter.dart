import 'package:flutter/material.dart';
import 'package:flutterproject/models/Allcountries.dart';
import 'package:flutterproject/screens/page2.dart';

class EntertainmentScreen extends StatelessWidget {
   EntertainmentScreen({super.key});
   var entertainment =[
    Entertainment(name: "The Eiffel Tower ➡ The Eiffel Tower offers breathtaking views of Paris and often hosts events and light shows"),
    Entertainment(name:"Louvre Museum ➡ Explore art and culture at the Louvre, one of the world's largest and most famous museums " ),
    Entertainment(name: "Disneyland Paris ➡  A magical destination for families with theme parks, rides, and character encounters"),
    Entertainment(name: "Palace of Versailles ➡ Discover the opulent palace, stunning gardens, and historical exhibitions at this UNESCO World Heritage site"),
    Entertainment(name: "Mont Saint-Michel ➡ Visit the picturesque island commune with its abbey, narrow streets, and stunning views"),
    Entertainment(name: "Cannes ➡ Famous for its film festival, Cannes offers beautiful beaches, luxury shopping, and a vibrant nightlife scene"),
    Entertainment(name: "Opera Garnier ➡ Enjoy world-class opera and ballet performances in a stunning architectural setting"),
    
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
          title: Text("Entertainment"),
          backgroundColor: Colors.grey[500],
    ),
    
    body: ListView(children: [
      RastsList(entertainment: entertainment[0],),
      RastsList(entertainment: entertainment[1],),
      RastsList(entertainment: entertainment[2],),
      RastsList(entertainment: entertainment[3],),
      RastsList(entertainment: entertainment[4],),
      RastsList(entertainment: entertainment[5],),
      RastsList(entertainment: entertainment[6],),

      ElevatedButton(onPressed: (){
      Navigator.pop(context,);
      
      }, child: Text("back"),
      
    )
      
      ],),
    
    ));
    
  }
}

class RastsList extends StatelessWidget {
  RastsList({
    required this.entertainment
  });
  Entertainment entertainment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
      child: ListTile(
        tileColor: Colors.grey[300],
        title: Container(child: Text(entertainment.name)),),
      );
      
    

  }
}