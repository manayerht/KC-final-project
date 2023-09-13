
import 'package:flutter/material.dart';
import 'package:flutterproject/models/Page1.dart';
import 'package:flutterproject/screens/page2.dart';

class Page1 extends StatefulWidget {
    
   Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var countries = [
     Countries(
    name: "France", 
    imgUrl: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQcAAADACAMAAAA+71YtAAAATlBMVEX///8AJlTOESZgbYYAHE8ADUmrs8DssrfMAAzNAB3ZXmcAAEXLAADs7vH77e7O1Nz00dT3+Pn9+PhTYn4AAD8AADjrrbLXUVva3uT22t3z0eQwAAABG0lEQVR4nO3QWw7BYACE0aKo3tAr+9+oLfyRSXg43wZmcqpKkiRJkiRJ0u8bgj2Dv6YxWMHevHSp1kvQYetz7QV7p/qQ6px0uDbHVLeWAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MCBAwcOHDhw4MDhjx3mpUu1Jh22PtdesPe65xqCDuMj1zv4S5IkSZIkSdK3fQCDLL5/H/+fnwAAAABJRU5ErkJggg==" ),
    Countries(
    name: "spain", 
    imgUrl: "https://www.colonialflag.com/cdn/shop/products/spain-flag__67306.1639690376.1280.1280.jpg?v=1673391427" ),
    
    Countries(
    name: "UK",
    imgUrl: "https://st2.depositphotos.com/1477718/8402/v/950/depositphotos_84029990-stock-illustration-flag-of-great-britain-official.jpg" ),
    Countries(
    name: "Italy", 
    imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwbD5KqDgRVC64691Vgvt4onBRqy_4iCYy9mQMauUhnMbA-PgbouheRT0cev5bLXVvnHM&usqp=CAU" ),
    Countries(
    name: "USA", 
    imgUrl: "https://flagsofallnations.com.au/cdn/shop/products/usa.jpg?v=1565327430" ),
    Countries(
    name: "Mexico", 
    imgUrl: "https://mexicanappetizersandmore.com/wp-content/uploads/2016/07/Mexico_flag-3.jpg" ),
    
    
    
    
    
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
          title: Text("COUNTRIES"),
          backgroundColor: Colors.grey[500],
        ),
        body: ListView(
          
          children:

         [
          COUNTRIESLIST(countries: countries[0]),
          COUNTRIESLIST(countries: countries[1]),
          COUNTRIESLIST(countries: countries[2],),
          COUNTRIESLIST(countries: countries[3],),
          COUNTRIESLIST(countries: countries[4],),
          COUNTRIESLIST(countries: countries[5],),
          
          
          ]
          )
          , 
      ),
    );
  
}}

class COUNTRIESLIST extends StatefulWidget { 
   COUNTRIESLIST({
    required this.countries
  });
  Countries countries;
  @override
  State<COUNTRIESLIST> createState() => _COUNTRIESLISTState();
}
class _COUNTRIESLISTState extends State<COUNTRIESLIST> {
  @override
  Widget build(BuildContext context) {
    return Container(     
      margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
      child:  
      ListTile(
        
        tileColor: Colors.grey[300],
        leading: CircleAvatar(foregroundImage: NetworkImage(widget.countries.imgUrl), ),
        title:  Text(
          widget.countries.name, textAlign: TextAlign.center,),
        trailing: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CountriesDetails(countries: widget.countries);
            },));
          }, 
          child: Icon(Icons.arrow_right_alt )
          
        ),
        
      )
      
    );
    
  }
} 