import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';

@injectable
class SubscribeToStockUseCase {
  SubscribeToStockUseCase(
    this._repository,
  );

  final StocksRepository _repository;

  void call(String symbol) {
    _repository.subscribeToStock(symbol);
  }
}
