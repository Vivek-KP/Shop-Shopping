import 'package:flutter/material.dart';
import 'package:myapp/location.dart';
import 'package:myapp/message.dart';
import 'package:myapp/page1.dart';
import 'package:myapp/shop1.dart';
import 'package:myapp/shop2.dart';
import 'package:myapp/shop3.dart';
import 'package:myapp/shopoffer.dart';



import 'loginPage.dart';
import 'homePage.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Loginpage.tag:(context)=>Loginpage(),
    Home.tag:(context)=>Home(),
    PageOne.tag:(context)=>PageOne(),
ShopOne.tag:(context)=>ShopOne(),
ShopThree.tag:(context)=>ShopThree(),
ShopTwo.tag:(context)=>ShopTwo(),
Message.tag:(context)=>Message(),
Offer.tag:(context)=>Offer(),
Location.tag:(context)=>Location()
  };
  @override
Widget build(BuildContext context) {
    return new MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
    
      theme: new ThemeData(
        primarySwatch: Colors.blue
        
      ),
      home: Loginpage(),
      routes: routes,
      ); 
  
  }  
  }
  

