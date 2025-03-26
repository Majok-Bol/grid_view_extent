import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  final List<String>imagePath=[
    "assets/images/p1.jpg",
    "assets/images/p2.jpg",
    "assets/images/p3.jpeg",
    "assets/images/p4.jpeg",
    "assets/images/p5.jpeg",
    "assets/images/p6.jpeg",
    "assets/images/p7.jpeg",
    "assets/images/p8.jpeg",
    "assets/images/profile1.webp",
    "assets/images/profile2.webp",
    "assets/images/profile3.webp",
    "assets/images/profile4.webp"
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('GridView.extent widget',style: TextStyle(color: Colors.white,fontSize: 20),),centerTitle: true,backgroundColor: Colors.purple,),
        body:GridView.extent(maxCrossAxisExtent:450,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
      padding: EdgeInsets.all(5),
      children: imagePath.map((path) => Image.asset(path)).toList(),
    ),
    ),
    );
  }
}