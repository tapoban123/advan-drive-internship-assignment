import 'package:flutter/material.dart';
import 'package:request_handling_app/utils/utils.dart';
import 'package:request_handling_app/view/auth_screen.dart';
import 'package:request_handling_app/view/end_user/create_request_screen.dart';
import 'package:request_handling_app/view/end_user/view_request_screen.dart';
import 'package:request_handling_app/view/commons/widgets/view_request_card.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class EndUserHomeScreen extends StatelessWidget {
  const EndUserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Requests"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CreateRequestScreen()),
          );
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(children: [ViewRequestCard(userType: UserType.END_USER)]),
      ),
    );
  }
}
