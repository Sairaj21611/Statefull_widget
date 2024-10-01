import 'package:flutter/material.dart';

void main(){
  runApp(const PlayersApp(),);
}
class PlayersApp extends StatefulWidget{
  const PlayersApp({super.key});

  @override
  State<PlayersApp> createState()=> _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp>{
  int _counter = 0;

  List<String> playerList = [
    "https://static.toiimg.com/thumb/msid-111400558,width-1070,height-580,imgsize-37996,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg",
    "https://static.toiimg.com/thumb/msid-63894357,width-400,resizemode-4/63894357.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXNSzokjSgzfkzKYvKkb5F_PGt57yrTXRoZQ&s",
    "https://images.indianexpress.com/2023/06/kapil-dev.jpg?w=414",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb8i0iB3k0J5eemFj6mf6V4-TRmD8BxqdduQ&s",
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Players",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 41, 37, 37),
        appBar: AppBar(
          title: const Text("Players App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600 ,
          ),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 81, 162, 230) ,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  playerList[_counter],
                  height: 300,
                  )
            ]
            ,) 
            ,),
          floatingActionButton: FloatingActionButton(
            onPressed:() {
              if(_counter<playerList.length-1){
                _counter++;
              }else{
                _counter = 0;
              }
              setState(() {});
            } ,
            tooltip: "Increment",
            backgroundColor: const Color.fromARGB(255, 81, 162, 230) ,
            child: const Icon(Icons.add),
            ),
      ),
    );
  }
}