import 'package:chat_app/routes/app_routes.dart';
import 'package:flutter/material.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router, 
      title: 'Chat App',
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: LandingScreen()
    );
  }
}