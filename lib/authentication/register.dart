//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inoculation_app/authentication/sign_in.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) { // scaffold returns the size of the screen 
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title:const Text('Register'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(80.0),
        child: Column(
          
          children: [
            
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.people_alt_outlined, ),
                  labelText:"First Name", 
              ),
            ),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.people_alt_outlined, ),
                  labelText:"Last Name", 
              ),),
               SizedBox(height: 10,),
            TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email_outlined, ),
                  labelText:"Email", 
              ),),
               SizedBox(height: 10,),
            TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.password_outlined, ),
                  labelText:"Password", 
              ),
              obscureText: true,),
               SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.password_outlined, ),
                  labelText:"Password", 
              ),
              obscureText: true,),
               SizedBox(height: 10,),

               ElevatedButton(onPressed:() {} , child:  Text("Register")),



               
               SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
const Text('Already have an account?  ',style: TextStyle(color: Colors.black),),
GestureDetector(
  onTap: (){  // NB   There must be an event that cause routing
    Navigator.of(context).push( //push makes you able to go back to a page  //context is the size of the screen //pushReplacement ->doesnt allow you to go back to the login page 
                    MaterialPageRoute(
                      builder:(context)=>const Login(),
                      ),
                  );
  },
 child: Text('Login',style: TextStyle(color: Colors.blue),),
)
                ],
              )

          ],
        ),
      ),
    );
  }
}