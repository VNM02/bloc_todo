import 'package:flutter/material.dart';

import '../add_task/addTask.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Todo App'
            ,
            style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0
            )
        ),
        centerTitle: true,
        titleSpacing: 00.0,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
      ),
      body: Container(


      child: Center(child:Text('Hello!!!')),

        ),

      floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>AddTask()));
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),

    );
  }
}
