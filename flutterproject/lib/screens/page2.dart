import 'package:flutter/material.dart';
import 'package:flutterproject/models/Page1.dart';
import 'package:flutterproject/screens/Cities.dart';
import 'package:flutterproject/screens/Rest.dart';
import 'package:flutterproject/screens/inter.dart';

class CountriesDetails extends StatefulWidget {
   

  @override
  State<CountriesDetails> createState() => _CountriesDetailsState();
  CountriesDetails({super.key, required this.countries});
  Countries countries;
}

class _CountriesDetailsState extends State<CountriesDetails> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      
      appBar: AppBar(
       backgroundColor: Colors.grey[500],
      ),
      body: Center(
        child: 
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
      
          children: [
            Container(
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CitiesScreen (),));
      
              }, child: Text("Cities🌆 ",
               ),
               
              style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.grey[500],
                   padding: EdgeInsets.symmetric(
                    vertical: 70,
                    horizontal: 65,
                   
               
                  )
              ),
              ),
              
            ),
            ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> RestScreen(),));
            }, 
            child: Text("Restaurants 🍽️"),
            style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.grey[500],
                   padding: EdgeInsets.symmetric(
                    vertical: 70,
                    horizontal: 50,
                   
               
                  )
              ),),
            ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> EntertainmentScreen(),));
            }, 
            child: Text("Entertainment🎡"
             ),

            style: 
           
            ElevatedButton.styleFrom(
                 backgroundColor: Colors.grey[500],
                   padding: EdgeInsets.symmetric(
                    vertical: 70,
                    horizontal: 50,
                    
               
                  )
              ),)
          ],
          
        ),
      ),
      
    );
    
  }
}