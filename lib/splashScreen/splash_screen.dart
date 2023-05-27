import 'dart:async';

import 'package:flutter/material.dart';
import 'package:users_app/assistants/assistant_methods.dart';
import 'package:users_app/authentication/login_screen.dart';
import 'package:users_app/global/global.dart';
import 'package:users_app/mainscreens/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
 {
  //startTimer is used to hold the current screen for given duration 
  startTimer()
  {

   fAuth.currentUser != null ? AssistantMethods.readCurrentOnlineUserInfo() : null;

    Timer(const Duration(seconds:3),()async
    
    {
      if(await fAuth.currentUser !=null)
      {

        currentFirebaseUser = fAuth.currentUser;
         Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
      }
      else
      {
         Navigator.push(context, MaterialPageRoute(builder: (c)=> const LoginScreen()));
      }
    });

  }

  @override
  // initState runs first and calls the given functions   
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color:Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/logo.png"),
              ),
              const SizedBox(height: 20,),
              const  Text(
                "Rapido Clone App",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}