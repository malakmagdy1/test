import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlPx5yts7HoXALq_wNEJICblysQY1SrKqxamrrzzmH&s"),
                ),
                Container(
                    //margin: EdgeInsets.symmetric(),
                    child: Text(
                  "malak mohamed magdy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 0,
                      fontWeight: FontWeight.bold),
                ))
              ],
            )))));
  }
}

/*
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home:Scaffold(
       backgroundColor: Colors.indigoAccent,
       body:SafeArea(
         child:Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.end,
           verticalDirection: VerticalDirection.up, //options in column
           children: [ //array bec i will write alo of things
             Container(
             width: 200.0,
             height:50.0,color:Colors.red,
             child:Text('malak'),),
           SizedBox(height:20), //height with column width with row to make space
           Container(
             width: 70.0,
             height:50.0,color:Colors.amber,
             child:Text('mohamed'),),
             Container(
               width: 70.0,
               height:50.0,color:Colors.purpleAccent,
               child:Text('magdyyyyyyyyy')),
           ],

         )
       )
     )
   );
  }
}*/
/*
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.greenAccent,
        body:SafeArea(
          child: Container( //take space or area of child only if i wrote width or height will change container
            margin:EdgeInsets.all(50), //change square with word in screen
              padding:EdgeInsets.all(50) ,   //change word in suare
              //margin: EdgeInspects.symmetric(vertical:50, horizontal:20),
              //margin:EdgeInspects.fromLTRB(left,top,right,bottom)'
              color:Colors.pinkAccent,
              child:Text("nnnnnnnn")),
        ),
      )
    );
  }

} */
/* runApp(MaterialApp
    (home: Scaffold
    (appBar:AppBar
    (title: Text("malak did it"), backgroundColor: Colors.red[900]),
  backgroundColor: Colors.greenAccent,body: Center(child:Image(image:AssetImage("images/pic.jpg"))
   // Text("eeh elhabl dah")
      ,),),));
}*/
/*
  runApp(MaterialApp(home:
  Center(child:Text("hello world"),),));
}
*/
