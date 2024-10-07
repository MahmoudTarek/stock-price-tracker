part of 'stocks_list_bloc.dart';

@freezed
class StocksListState with _$StocksListState {
  const factory StocksListState.loading() = _Loading;

  const factory StocksListState.content({
    @Default([]) List<StockModel> listOfStocks,
    @Default([]) List<StockModel> filteredStocks,
    @Default([]) List<int> subscribedIndices,
    @Default({}) Map<String, double> stockPrices,
  }) = _Content;

  const factory StocksListState.error() = _Error;
}

extension StocksListStateX on StocksListState {
  double? getStockPrice(String symbol) {
    if (this is _Content) {
      final content = this as _Content;
      if (content.stockPrices.containsKey(symbol)) {
        return content.stockPrices[symbol];
      }
      return null;
    }
    return null;
  }
}
