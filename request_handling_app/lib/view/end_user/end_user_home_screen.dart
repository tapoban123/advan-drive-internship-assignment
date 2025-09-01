import 'package:flutter/material.dart';
import 'package:request_handling_app/utils/utils.dart';
import 'package:request_handling_app/view/end_user/view_request_screen.dart';

class EndUserHomeScreen extends StatelessWidget {
  const EndUserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Requests"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Hello World"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("ID: ${"x" * 10}", style: TextStyle(fontSize: 12)),
                    Text(
                      formatDateTime(DateTime.now()),
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ViewRequestScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
