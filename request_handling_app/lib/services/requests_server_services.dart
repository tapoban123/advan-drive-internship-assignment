import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

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
