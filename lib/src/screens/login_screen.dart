// DEPENDENCIES
import 'package:flutter/material.dart';

// DEV LIBS

class LoginScreen extends StatefulWidget{
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child:Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            // USE CONTAIN FOR JUST MARGIN SPACING
            Container(margin: EdgeInsets.only(top: 35.0)),
            submitButton()
          ],
        ),


      )
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address:',
        hintText: 'you@email.com'
      ),

    );

  }

  Widget passwordField(){
    return TextFormField(
  //    off for testing
  //    obscureText: true,

      decoration: InputDecoration(
          labelText: 'Password:',
          hintText: 'Password',
      ),
    );

  }

  Widget submitButton(){
    return RaisedButton(
      onPressed:(){
        print('submit');
      },
      color: Colors.blue,
      child:Text('Submit'),
    );
  }



}