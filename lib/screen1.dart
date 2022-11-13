import 'package:flutter/material.dart';
import 'package:neviga/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Hello I am Page 1",)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Hello I am Page 1",style: TextStyle(fontSize: 30),),
          const SizedBox(height: 50,),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, '/Screen2');
                },
                child: const Text('Go to page 2')),
          )
        ],
      ),
    );
  }
}
