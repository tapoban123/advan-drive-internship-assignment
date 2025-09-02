import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatDateTime(DateTime datetime) {
  return DateFormat.yMMMMd().format(datetime);
}

enum RequestStatus { PENDING, PARTIALLY_FULLFILLED, CONFIRMED }

extension RequestStatusWidget on RequestStatus {
  Widget get card {
    switch (this) {
      case RequestStatus.PENDING:
        return _RequestStatusCard(title: "PENDING", color: Color(0xFFFFAAAA));
      case RequestStatus.PARTIALLY_FULLFILLED:
        return _RequestStatusCard(
          title: "PARTIAL",
          color: Color(0xFFFFCC99),
        );
      case RequestStatus.CONFIRMED:
        return _RequestStatusCard(title: "CONFIRMED", color: Color(0xFF79B6EB));
    }
  }
}

class _RequestStatusCard extends StatelessWidget {
  final String title;
  final Color color;

  const _RequestStatusCard({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
