import 'package:flutter/material.dart';
import 'package:neviga/screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(child: Text("Hello I am Page 2",)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Hello I am Page 2",style: TextStyle(fontSize: 30),),
          const SizedBox(height: 50,),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen1()));
                },
                child: const Text('Go to page 1')),
          )
        ],
      ),
    );
  }
}
