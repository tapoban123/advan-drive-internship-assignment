import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_handling_app/controller/requests_websocket_controller.dart';
import 'package:request_handling_app/view/auth_screen.dart';
import 'package:request_handling_app/view/commons/widgets/view_request_card.dart';

class ReceiverHomeScreen extends ConsumerWidget {
  const ReceiverHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Requests"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            ref
                .read(requestsStreamProvider(requestId: ""))
                .when(
                  data: (data) {
                    data;
                  },
                  error: (error, stackTrace) {},
                  loading: () {},
                ),
          ],
        ),
      ),
    );
  }
}
