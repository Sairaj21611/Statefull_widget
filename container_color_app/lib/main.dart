import 'package:flutter/material.dart';

void main(){
  runApp(const ContainerColorApp(),);
}

class ContainerColorApp extends StatefulWidget {
  const ContainerColorApp({super.key});

  @override
  State<ContainerColorApp> createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State<ContainerColorApp> {
  bool colorChange = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container_Color_App",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 21, 21),
        appBar: AppBar(
          title: const Text("Container Color App"), 
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 213, 117, 149),
           ),
          body: Center(
            child: Container(
              height: 250,
              width: 250,
              color: (colorChange) ? Colors.amber : Colors.blue,)
              ,),
          floatingActionButton: FloatingActionButton(
            onPressed:() {
              if(colorChange){
                colorChange = false;
              }else{
                colorChange = true;
              }
              setState(() {
                
              });
            } ,
    
            backgroundColor: const Color.fromARGB(255, 213, 117, 149),
            child:  const Icon(Icons.add),
            ),
      ),
    );
  }
}