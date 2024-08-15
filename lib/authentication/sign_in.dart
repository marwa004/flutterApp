import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inoculation_app/authentication/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title:const Text('Login'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(80.0),
        child: Column(
          
          children: [
           
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
                  Icons.password_outlined, 
                 ),
                  
                  labelText:"Password", 
                  
              ),
              obscureText: true,),
               SizedBox(height: 40,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(context)=>const Register(),
                      ),
                  );
                } ,
               child:  const Text('Forgot Password?',style: TextStyle(color: Colors.blue),), 
              ),
               ElevatedButton(onPressed: (){},
            style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.orange),
            ), 
            child: Text('Login')),
            ],
           ),
           
              
             
              SizedBox(height: 30,),
              Row(
                children: [
const Text('Already have an account?  ',style: TextStyle(color: Colors.black),),
GestureDetector(
  onTap: (){
    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(context)=>const Register(),
                      ),
                  );
  },
 child: Text('Register',style: TextStyle(color: Colors.blue),),
)
                ],
              )
                
          ],
        ),
      ),
    );
  }
}