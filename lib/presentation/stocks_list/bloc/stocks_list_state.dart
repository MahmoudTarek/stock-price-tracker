part of 'stocks_list_bloc.dart';

@freezed
class StocksListState with _$StocksListState {
  const factory StocksListState.loading() = _Loading;

  const factory StocksListState.content({
    @Default([]) List<StockModel> listOfStocks,
    @Default([]) List<StockModel> filteredStocks,
    @Default([]) List<String> subscribedSymbols,
    @Default({}) Map<String, double> stockPrices,
  }) = StocksListContentState;

  const factory StocksListState.error(String error) = _Error;
}

extension StocksListStateX on StocksListState {
  double? getStockPrice(String symbol) {
    if (this is StocksListContentState) {
      final content = this as StocksListContentState;
      if (content.stockPrices.containsKey(symbol)) {
        return content.stockPrices[symbol];
      }
      return null;
    }
    return null;
  }
}
