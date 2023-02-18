// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_ui/Components/mytext_fields.dart';
import 'package:login_ui/Components/sigin_button.dart';
import 'package:login_ui/Components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  //text_field controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in method
  void signUserin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            //logo
            Icon(
              Icons.android,
              size: 50,
            ),
            SizedBox(
              height: 10,
            ),
            //Welcome Text_field
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome Back,you\'ve been missed!',
              style: TextStyle(color: Colors.grey[700]),
            ),

            //email Text_field
            SizedBox(
              height: 20,
            ),
            MyTextFields(
              controller: emailController,
              hintText: 'Email',
              obscuretext: false
            ),

            //password Text_field
            SizedBox(
              height: 10,
            ),
            MyTextFields(
              controller: passwordController,
              hintText: 'Password',
              obscuretext: true,
            ),
            SizedBox(
              height: 10,
            ),

            //forget password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),

            // sign in button
            SizedBox(
              height: 20,
            ),
            SigninButton(onTap: signUserin),


            //or continue with
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider( thickness: 0.5,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text('Or Continue with', style: TextStyle(color: Colors.grey.shade700),),
                  Expanded(
                    child: Divider( thickness: 0.5,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google button
                Mytiles(imagePath: 'lib/images/google.png'),
                SizedBox(width: 20,),
                //apple button
                Mytiles(imagePath: 'lib/images/apple.png')
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?", style: TextStyle(color: Colors.grey.shade700),),
                Text(" Register Now", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
