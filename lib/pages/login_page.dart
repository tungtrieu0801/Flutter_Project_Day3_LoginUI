import 'package:flutter/material.dart';
import 'package:loginui/components/my_textfile.dart';
import 'package:loginui/components/square_title.dart';

import '../components/my_button.dart';
class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  //text edditing controls
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              //logo
              const Icon(Icons.login_outlined, size: 100,),
              const SizedBox(height: 50,),
              Text("Wellcome back you're been missed", style: TextStyle(color: Colors.grey[700], fontSize: 20)),
              const SizedBox(height: 35,),
              MyTextFiled(
                controller: usernameController,
                hintext: "Username",
                obscureText: false,
              ),
              const SizedBox(height: 15,),
              MyTextFiled(
                controller: passwordController,
                hintext: "Password",
                obscureText: false,
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",style: TextStyle(color: Colors.grey[600]),),
                  ],
                )
              ),
              const SizedBox(height: 15,),
              Mybutton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text("Or contine with", style: TextStyle(fontSize: 16, color: Colors.grey[700]),),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTitle(imagePath:'lib/images/google.png'),
                  const SizedBox(width: 15,),
                  SquareTitle(imagePath:'lib/images/apple_icon.png')
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?", style: TextStyle(color: Colors.grey[700]),),
                  const SizedBox(width: 4,),
                  Text("Register now", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
