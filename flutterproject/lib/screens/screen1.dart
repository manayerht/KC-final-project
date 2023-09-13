import 'package:flutter/material.dart';
import 'package:flutterproject/Pagen1.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey[700],
        
        appBar: AppBar(
          title: Text("TRAVEL PLANNER"),
          backgroundColor: Colors.grey[500],
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
              Text("✈︎",
              style: TextStyle(fontSize: 150, color: Colors.grey[500]) ,
              ),
              
               
            ElevatedButton( 
               onPressed: (){

               Navigator.push(context, MaterialPageRoute(builder: (context) =>Page1(),));
                  
                //Navigator.push(context,(builder: (context)=>Page1(),));
                },
              child: Text("Tap to continue"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[500],
                   padding: EdgeInsets.symmetric(
                    vertical: 35,
                    horizontal: 90,
                   
               
                  )
                 ),
            
            
            
          ),],
        
      ),
    ));
  }
}