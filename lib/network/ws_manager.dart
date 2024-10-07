import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef OnMessageReceived = void Function(String message);
typedef OnErrorReceived = void Function(String message);
typedef OnComplete = void Function();

abstract class WSManager {
  void connect(String url);
  void sendMessage(String message);
  void listen({
    OnMessageReceived? onMessageReceived,
    OnErrorReceived? onErrorReceived,
    OnComplete? onComplete,
  });
  void close();
}

@LazySingleton(as: WSManager)
class WSManagerImpl extends WSManager {
  late WebSocketChannel channel;

  @override
  void connect(String url) {
    channel = WebSocketChannel.connect(
      Uri.parse(url),
    );
  }

  @override
  void sendMessage(String message) {
    channel.sink.add(message);
  }

  @override
  void listen({
    OnMessageReceived? onMessageReceived,
    OnErrorReceived? onErrorReceived,
    OnComplete? onComplete,
  }) {
    channel.stream.listen(
      (message) => onMessageReceived?.call(message),
      onError: (error) => onErrorReceived?.call(error.toString()),
      onDone: () => onComplete?.call(),
    );
  }

  @override
  void close() {
    channel.sink.close();
  }
}
