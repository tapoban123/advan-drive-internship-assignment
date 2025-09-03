import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'requests_websocket_controller.g.dart';

@riverpod
class RequestsWebsocketController extends _$RequestsWebsocketController {
  final _channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  @override
  Stream build() {
    return _channel.stream;
  }
}

@riverpod
Stream requestsStream(Ref ref, {required String requestId}) async* {
  final channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );
  yield channel.stream.map((event) =>,);
}
