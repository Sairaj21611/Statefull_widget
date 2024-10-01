import 'package:flutter/material.dart';

void main(){
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget{
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp>{
  int count = 0;
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Counter App",
        home:Scaffold(
          backgroundColor: const Color.fromARGB(255, 228, 203, 238),
          appBar: AppBar(
            title: const Text("counter App"),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 82, 134, 177),
            ),
          body: Center(
            child: Text("$count"),
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              count++;
              setState(() {});
            },
            backgroundColor: const Color.fromARGB(255, 102, 174, 233),
            child: const Icon(Icons.add),
            ),
          ),
         );
        }
      }
