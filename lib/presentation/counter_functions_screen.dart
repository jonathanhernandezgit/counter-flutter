import "package:flutter/material.dart";



class CounterFunctionsScreen extends StatefulWidget {


  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {



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
        title: Text('Counter Functions'),
        actions: [
          IconButton(
          icon: Icon (Icons.refresh_rounded), 
          onPressed: () {

            setState(() {
              clickCounter = 0;
            });

          }),
        ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton( 
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              ),
            const SizedBox( height: 10, ),
            CustomButton( 
              icon: Icons.exposure_minus_1_outlined, 
              onPressed: () {
                setState(() {
                  if(clickCounter == 0 ) return;
                  clickCounter--;
                });
              },
            ),
               const SizedBox( height: 10, ),
            CustomButton( 
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              }, ),
          ],
        )
      );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;
  

  const CustomButton({
    super.key, required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 10,
      backgroundColor: Colors.lightBlue,
      onPressed: onPressed,
        child: Icon( icon ),
    );
  }
}