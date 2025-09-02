import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_handling_app/view/auth_screen.dart';
import 'package:request_handling_app/view/home_screen.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Request Confirmation Workflow',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: ThemeData.dark().scaffoldBackgroundColor,
          surfaceTintColor: ThemeData.dark().scaffoldBackgroundColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const EndUserOrReceiverScreen(),
    );
  }
}
