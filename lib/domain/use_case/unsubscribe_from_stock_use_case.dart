import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';

@injectable
class UnsubscribeFromStockUseCase {
  UnsubscribeFromStockUseCase(
    this._repository,
  );

  final StocksRepository _repository;

  void call(String symbol) {
    _repository.unsubscribeFromStock(symbol);
  }
}
