import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';

@injectable
class GetPriceUpdatesUseCase {
  GetPriceUpdatesUseCase(
    this._repository,
  );

  final StocksRepository _repository;

  void call({OnLivePriceUpdateReceived? onMessageReceived}) {
    _repository.getStocksPricesUpdates(onMessageReceived: onMessageReceived);
  }
}
