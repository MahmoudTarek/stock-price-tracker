import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/model/stock_price_model.dart';

typedef OnLivePriceUpdateReceived = void Function(StockPriceModel model);

abstract class StocksRepository {
  Future<List<StockModel>> getStocks();
  void connectToLiveUpdates();
  void subscribeToStock(String symbol);
  void unsubscribeFromStock(String symbol);
  void closeConnection();
  void getStocksPricesUpdates({OnLivePriceUpdateReceived? onMessageReceived});
}
