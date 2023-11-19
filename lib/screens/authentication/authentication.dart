import "package:flutter/material.dart";

import "login/login.dart";

class Authentication extends StatelessWidget {
  const Authentication({super.key});

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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.all(10.0),
         // margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('assets/todo.png'),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                  },
                  child: Text('SignUp',
                    style: TextStyle(
                        fontSize:30.0,
                        fontWeight: FontWeight.bold
                    ),),

                ),

              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Text('LogIn',
                  style: TextStyle(
                    fontSize:30.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
