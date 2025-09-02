import 'package:flutter/material.dart';
import 'package:request_handling_app/utils/utils.dart';
import 'package:request_handling_app/view/auth_screen.dart';
import 'package:request_handling_app/view/end_user/view_request_screen.dart';
import 'package:request_handling_app/view/receiver/confirm_request_screen.dart';

class ViewRequestCard extends StatelessWidget {
  final UserType userType;

  const ViewRequestCard({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TODO: Change request title to request ID and implement a ViewRequestScreen
            SizedBox(
              width: 240,
              child: Text("Hello World" * 3, overflow: TextOverflow.ellipsis),
            ),
            userType == UserType.END_USER
                ? RequestStatus.CONFIRMED.card
                : SizedBox.shrink(),
          ],
        ),
        subtitle: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID: ${"x" * 10}", style: TextStyle(fontSize: 12)),
                Text(
                  formatDateTime(DateTime.now()),
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        onTap: () {
          if (userType == UserType.END_USER) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ViewRequestScreen()),
            );
          } else {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ConfirmRequestScreen()),
            );
          }
        },
      ),
    );
  }
}
