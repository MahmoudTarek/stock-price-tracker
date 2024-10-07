part of 'stocks_list_bloc.dart';

@freezed
class StocksListEvent with _$StocksListEvent {
  const factory StocksListEvent.init() = _InitEvent;
  const factory StocksListEvent.subscribe(String symbol) = _SubscribeEvent;
  const factory StocksListEvent.unsubscribe(String symbol) = _UnsubscribeEvent;
  const factory StocksListEvent.updatePrice(String symbol, double price) =
      _UpdatePriceEvent;
  const factory StocksListEvent.search(String query) = _SearchEvent;
}
