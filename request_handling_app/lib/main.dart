import 'package:flutter/material.dart';
import 'package:request_handling_app/view/auth_screen.dart';
import 'package:request_handling_app/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Request Confirmation Workflow',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const EndUserOrReceiverScreen(),
    );
  }
}
