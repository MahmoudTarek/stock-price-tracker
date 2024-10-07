import 'package:stocks_price_tracker/domain/model/stock_model.dart';

abstract class StocksRepository {
  Future<List<StockModel>> getStocks();
}
