import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';

@injectable
class GetStocksUseCase {
  GetStocksUseCase(
    this._repository,
  );

  final StocksRepository _repository;

  Future<List<StockModel>> call() {
    return _repository.getStocks();
  }
}
