import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef OnMessageReceived = void Function(String message);
typedef OnErrorReceived = void Function(String message);
typedef OnComplete = void Function();

abstract class WSManager {
  void setUrl(String url);
  void connect();
  void sendMessage(String message);
  void listen({OnMessageReceived? onMessageReceived});
  void close();
}

@LazySingleton(as: WSManager)
class WSManagerImpl extends WSManager {
  late WebSocketChannel channel;
  bool isConnected = false;
  late Uri url;

  @override
  void setUrl(String url) {
    this.url = Uri.parse(url);
  }

  @override
  void connect() {
    channel = WebSocketChannel.connect(url);
  }

  @override
  void sendMessage(String message) {
    if (isConnected) channel.sink.add(message);
  }

  @override
  void listen({OnMessageReceived? onMessageReceived}) {
    channel.stream.listen(
      (message) => onMessageReceived?.call(message),
      onDone: () {
        isConnected = false;
        _attemptReconnection();
      },
      onError: (_) {
        isConnected = false;
        _attemptReconnection();
      },
    );

    isConnected = true;
  }

  void _attemptReconnection() {
    const retryDuration = Duration(seconds: 3);

    Future.delayed(retryDuration, () {
      if (!isConnected) {
        connect();
      }
    });
  }

  @override
  void close() {
    channel.sink.close();
    isConnected = false;
  }
}
