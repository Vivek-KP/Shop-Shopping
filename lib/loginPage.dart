import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'homePage.dart';




class Loginpage extends StatefulWidget{
    static String tag = 'login';

  @override
  State createState() => new LoginpageState();
}

  

class LoginpageState extends State<Loginpage>{

  @override
  Widget build(BuildContext context){
    
    return new Scaffold(

      
backgroundColor: Colors.white,
resizeToAvoidBottomPadding: true,
body:
  Stack(
    
  fit: StackFit.expand,
  children: <Widget>[
     new Image(
        image: new AssetImage("assets/new.jpg"),
        fit: BoxFit.cover,
        color: Colors.black54,
        colorBlendMode: BlendMode.darken,
      ),
    
SingleChildScrollView(
  child: Padding(
    padding: EdgeInsets.only(left: 28,right: 28,top: 147),
    child: Column(
      children: <Widget>[
      
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.61,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 15),
              ),
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 13),
                blurRadius: 10
              ),
            ],
          ),
          
          child: Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top: 0.02),
            child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Login",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "TrajanPro",
                      fontSize: 24,
                      letterSpacing: 0.6
                    ),),
                    SizedBox(
                      width: 57,
                    ),
                    Image.asset("assets/dot.png",scale: 4.9,)
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                
                Text("Email",
                style: TextStyle(
                  fontSize: 20,
                ),),
                TextField(
                  decoration: InputDecoration(
                    hintText: "vivek.k.p@iee.org",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    )
                  ),
                ),
           SizedBox(
                  height: 8.7,
                ),
                
                Text("Password",
                style: TextStyle(
                  fontSize: 20,
                ),),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      
                    )
                  ),),
                   SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    FlatButton(
                      
                      child: Text("Forgot Password",
                      style: TextStyle(fontSize: 15
                      ,color: Colors.blue,
                      ),
                      ),
                      onPressed: (){
                       
                      },
                      splashColor: Colors.blue,
                    ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                    MaterialButton(
                      minWidth: 19,
                       color: Colors.lightBlue,
                 textColor: Colors.white,
                 child: Text("Login"),
                 onPressed: (){
                    Navigator.of(context).pushNamed(Home.tag);
                 },
                 splashColor:Colors.cyanAccent,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Row(
          children: <Widget>[
            Text("Create an account",
            style: 
            TextStyle(color: Colors.blue,
            fontSize: 16),),
            Padding(padding: EdgeInsets.only(left: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                 color: Colors.blue,
                       textColor: Colors.white,
                       child: Text("Sign in"),
                       onPressed: ()=>{
                         
                       },
                       splashColor: Colors.lightBlue,
              ),
            ),
          ],
        )
      ],
    ),
  ),
)
  ],
              
  ),
    );

  }
  
}
