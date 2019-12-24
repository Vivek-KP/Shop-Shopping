import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  
  @override
   State createState() => new PageThreeState();
}

  

class PageThreeState extends State<PageThree>{
 @override
  Widget build(BuildContext context){
    
    return new Container(
       color: Colors.white,
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Your favorites",style: 
                                TextStyle(
                                  fontFamily: 'Calistoga',
                                  fontSize: 20
                                ),),
              SizedBox(height: 50),
              Center(child: Icon(Icons.favorite,size: 180,color: Colors.grey,)
              ,),
              SizedBox(
                height: 20,
              ),
              Text("No Favorites yet",style: 
                                TextStyle(
                                  fontFamily: 'Calistoga',
                                  fontSize: 20
                                ),)
            ],
          )
        ],
      ),
    );
}
}