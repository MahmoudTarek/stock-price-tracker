import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';
import 'package:stocks_price_tracker/network/ws_manager.dart';

@injectable
class GetPriceUpdatesUseCase {
  GetPriceUpdatesUseCase(
    this._repository,
  );

  final StocksRepository _repository;

  void call({
    OnLivePriceUpdateReceived? onMessageReceived,
    OnErrorReceived? onErrorReceived,
    OnComplete? onComplete,
  }) {
    _repository.getStocksPricesUpdates(
      onMessageReceived: onMessageReceived,
      onErrorReceived: onErrorReceived,
      onComplete: onComplete,
    );
  }
}
