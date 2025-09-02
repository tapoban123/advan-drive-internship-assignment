import 'package:flutter/material.dart';
import 'package:request_handling_app/view/auth_screen.dart';
import 'package:request_handling_app/view/commons/widgets/view_request_card.dart';

class ReceiverHomeScreen extends StatelessWidget {
  const ReceiverHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Requests"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(children: [ViewRequestCard(userType: UserType.RECEIVER)]),
      ),
    );
  }
}
