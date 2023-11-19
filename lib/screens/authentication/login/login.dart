import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: <Widget>[
          Image.asset('assets/login.png'),
          SizedBox(height: 50.0,),
          Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                  ),
                ),
                SizedBox(height: 10.0,),
                TextFormField()
              ],
            ),
          )

        ],
      ),
    );
  }
}
