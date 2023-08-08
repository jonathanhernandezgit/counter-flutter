import "package:flutter/material.dart";



class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {



   String setText(int clicks){
    String text = "";
    if(clicks == 1 ){
      text = "Click";
    } else{
      text = "Clicks";
    }
    return text;
  }

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
        body:  Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100 ),),
              Text(setText(clickCounter),  style: const TextStyle( fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

            setState(() {
              clickCounter += 1;
            });
          },
          child: const Icon( Icons.plus_one  ),
          ),
      );
  }
}