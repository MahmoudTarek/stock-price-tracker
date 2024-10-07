import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';

@injectable
class ConnectToLiveUpdatesUseCase {
  ConnectToLiveUpdatesUseCase(
    this._repository,
  );

  final StocksRepository _repository;

  void call() {
    _repository.connectToLiveUpdates();
  }
}
