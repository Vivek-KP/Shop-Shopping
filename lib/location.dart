import 'package:flutter/material.dart';
class Location extends StatefulWidget{
    static String tag = 'Location';

  @override
  State createState() => new LocationState();
}

  

class LocationState extends State<Location>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      
      body: Padding(
        padding: const EdgeInsets.only(top: 19),
        child: Container(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Change Location",style: 
                                TextStyle(
                                  fontFamily: 'Calistoga',
                                  fontSize: 20
                                ),),
              SizedBox(
                height: 10,
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   decoration: BoxDecoration(                 
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                  ),
                   child: TextField(
                     
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        hintText: "Location",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          )
                        ),
                      ),
                      
                 ),
               ),
               SizedBox(
                 height: 10,
               ),
               FlatButton(
                 child: Text("Submitt",style: 
                                TextStyle(
                                  fontFamily: 'Calistoga',
                                  fontSize: 16
                                ),),
                 onPressed: (){},
                 color: Colors.blue,
                 
               ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FlatButton(
                           child: Text("Add Home Place",style: 
                                TextStyle(
                                  fontFamily: 'Calistoga',
                                  fontSize: 16
                                ),),
                           onPressed: (){},
                           color: Colors.blue,
                      ),
                    
                  
                
              
              FlatButton(
                   child: Text("Add work place",style: 
                                TextStyle(
                                  fontFamily: 'Calistoga',
                                  fontSize: 16
                                ),),
                   onPressed: (){},
                   color: Colors.blue,)
                    ]
                  )
                ]
              ),
            )
            ],
          ),
        ),
      ),
      
    );
  }}