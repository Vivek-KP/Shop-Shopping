import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

class Home extends StatefulWidget {
  static String tag = 'home';
  @override
State createState() => new HomeState();
}

  

class HomeState extends State<Home>{
  int _currentIndex =0;
  Widget callPage(int currentIndex){
switch(currentIndex) {
   case 0: return PageOne();
   case 1: return PageTwo();
   case 2: return PageThree();
   case 3: return PageFour();
   

   break;
   default:return PageOne();
}
  }
Icon cusIcon = Icon(Icons.search,color: Colors.white);
Widget cusSearchBar = Text("Shop & Shopping",style: 
TextStyle(
  fontFamily: 'Calistoga',
  color: Colors.black,

),);
  @override
  Widget build(BuildContext context){
    
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          titleSpacing: 10,
          title: 
          cusSearchBar,
          backgroundColor: Colors.blue,
          
          actions: <Widget>[
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new IconButton(icon: cusIcon,
            onPressed: (){
                  setState(() {
                    if(this.cusIcon.icon == Icons.search){
                      this.cusIcon=Icon(Icons.cancel,color: Colors.white,);
                      this.cusSearchBar=TextField(
                        cursorColor: Colors.black,
                        
                        textInputAction: TextInputAction.go,
                        decoration: InputDecoration(
                         
                          hintText: "Search Shops",
                        
                           prefixIcon: new Icon(Icons.search,color: Colors.white,),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                        ),

                      );

                    }
                    else{
                      
                      this.cusIcon = Icon(Icons.search,color: Colors.white);
                        this.cusSearchBar = Text("Shop & Shopping",style: 
                        TextStyle(color: Colors.black,
                        fontFamily: 'Calistoga',
                        letterSpacing: .4,
                        fontSize: 23)
                        ,);

                    }
                  }
                  );
            },),
                ],
              ),
           
          
          ],
        
        ),
      
      

      drawer: new Drawer(
        
        child: new ListView(
          children: <Widget>[
          
            new UserAccountsDrawerHeader(
              accountName: Text('Hello vivek'),  
            accountEmail: Text("vivek.k.p@ieee.org"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue
            ),
            ),
  //          body
  
  InkWell(
    onTap: (){},
      child: ListTile(
      title: Text("My Account"),
      leading: Icon(Icons.person,color: Colors.red,),
    ),
  ),
  InkWell(
    onTap: (){},
      child: ListTile(
      title: Text("My order"),
      leading: Icon(Icons.shopping_basket,color: Colors.green,),
    ),
  ),
  
   InkWell(
    onTap: (){},
      child: ListTile(
      title: Text("Settings"),
      leading: Icon(Icons.settings,color: Colors.grey,),
    ),
  ),
   InkWell(
    onTap: (){
    
    },
      child: ListTile(
      title: Text("Help & Feedback"),
      leading: Icon(Icons.feedback,color: Colors.red,),
    ),
  ),
   InkWell(
    onTap: (){},
      child: ListTile(
      title: Text("About"),
      leading: Icon(Icons.help,color: Colors.lightBlue,),
    ),
  ),
          ],
        ),
      ),
      body: 
      Container(
        child: callPage(_currentIndex
          
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
        icon: Icon(Icons.location_on ,color: Colors.white,),
        title: Text("Near me",style: TextStyle(
          fontFamily: 'BreeSerif',
          color: Colors.black
        ),
        ),
        backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
        icon: Icon(Icons.local_offer,color: Colors.white,
        ),
        title: Text("Offers",style: TextStyle(
          fontFamily: 'BreeSerif',
          color: Colors.black
        ),),
        backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text("Favourite",style: TextStyle(
          fontFamily: 'BreeSerif',
          color: Colors.black
        ),),
      
        backgroundColor: Colors.blue,),
        BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title: Text("My cart",style: TextStyle(
          fontFamily: 'BreeSerif',
          color: Colors.black
        ),),
        backgroundColor: Colors.blue,)
        ],
        onTap: (intex){
setState(() {
  _currentIndex=intex;
});if(intex==2){
  
}
        },
      ),
    
      
    );
}
}
