import 'package:bloc_todo/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up',
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Image.asset('assets/signup.png'),

              SizedBox(height: 50.0,),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty )
                        {
                          return 'Invalid Name';
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty || !value.contains('@'))
                        {
                          return 'Invalid E-Mail Id';
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty || value.length<6)
                        {
                          return 'Invalid Password';
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      child: ElevatedButton(
                        child: Text('Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                        },
                      ),
                    ),
                    SizedBox(height: 10.0,),
                  Container(
                    child: TextButton(
                      child: Text('Already a member ?'),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                    ),
                  )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
