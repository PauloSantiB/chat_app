import 'package:chat_app/screens/chat_details_screen.dart';
import 'package:chat_app/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/home_screen.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
  initialLocation: '/landing',
  routes: [
    GoRoute(
      path:  '/home',
      name: 'home',
      builder: (context, state) => 
      HomeScreen(),
    ),
    GoRoute(
      path: '/chat-details',
      name: 'chat-details',
      builder: (context, state) => 
      ChatDetailsScreen(extra: state.extra as ChatDetailsExtra ), 
      ), 
       GoRoute(
      path: '/landing',
      name: 'landing',
      builder: (context, state) => 
      LandingScreen(),
      ),
  ],
);