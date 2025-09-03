import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:web_socket_channel/web_socket_channel.dart';

class RequestsServerServices {
  Future<void> createNewRequest(Map<String, Object?> request) async {
    try {
      log(jsonEncode(request));
      final response = await http.post(
        Uri.parse("http://10.0.2.2:8000/create-request"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(request),
      );
      log(response.body);
      if (response.statusCode == 201) {
        log(response.body);
      }
    } catch (e) {
      log("CREATE REQUEST ERROR : $e");
    }
  }
}


Stream requestsChannel({required String requestId}) async* {
  final channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  yield channel.stream;
}


