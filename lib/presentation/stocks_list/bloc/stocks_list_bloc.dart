import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/use_case/close_live_updates_connection_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/connect_to_live_updates_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/get_price_updates_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/get_stocks_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/subscribe_to_stock_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/unsubscribe_from_stock_use_case.dart';
import 'package:stocks_price_tracker/network/app_exception.dart';

part 'stocks_list_bloc.freezed.dart';
part 'stocks_list_event.dart';
part 'stocks_list_state.dart';

@injectable
class StocksListBloc extends Bloc<StocksListEvent, StocksListState> {
  StocksListBloc(
    this._getStocksUseCase,
    this._connectToLiveUpdatesUseCase,
    this._closeLiveUpdatesConnectionUseCase,
    this._subscribeToStockUseCase,
    this._unsubscribeFromStockUseCase,
    this._getPriceUpdatesUseCase,
  ) : super(const StocksListState.loading()) {
    on<StocksListEvent>(
      (event, emit) => event.map(
        init: (e) => _init(emit, e),
        subscribe: (e) => _subscribe(emit, e),
        unsubscribe: (e) => _unsubscribe(emit, e),
        updatePrice: (e) => _updatePrice(emit, e),
        search: (e) => _search(emit, e),
      ),
    );

    add(const StocksListEvent.init());
  }

  final GetStocksUseCase _getStocksUseCase;
  final ConnectToLiveUpdatesUseCase _connectToLiveUpdatesUseCase;
  final CloseLiveUpdatesConnectionUseCase _closeLiveUpdatesConnectionUseCase;
  final SubscribeToStockUseCase _subscribeToStockUseCase;
  final UnsubscribeFromStockUseCase _unsubscribeFromStockUseCase;
  final GetPriceUpdatesUseCase _getPriceUpdatesUseCase;

  Future<void> _init(
    Emitter<StocksListState> emit,
    _InitEvent event,
  ) async {
    try {
      final stocks = await _getStocksUseCase();

      emit(
        StocksListState.content(filteredStocks: stocks, listOfStocks: stocks),
      );
      _connectToLiveUpdatesUseCase();

      _getPriceUpdates();
    } on AppException catch (exception) {
      emit(StocksListState.error(exception.message));
    }
  }

  void _subscribe(
    Emitter<StocksListState> emit,
    _SubscribeEvent event,
  ) {
    final contentState = state.mapOrNull(content: (value) => value);
    if (contentState == null) return;

    if (contentState.subscribedSymbols.contains(event.symbol)) return;
    final list = List<String>.from(contentState.subscribedSymbols);
    list.add(event.symbol);
    _subscribeToStockUseCase(event.symbol);
    emit(contentState.copyWith(subscribedSymbols: list));
  }

  void _unsubscribe(
    Emitter<StocksListState> emit,
    _UnsubscribeEvent event,
  ) {
    final contentState = state.mapOrNull(content: (value) => value);
    if (contentState == null) return;

    if (!contentState.subscribedSymbols.contains(event.symbol)) return;
    final list = List<String>.from(contentState.subscribedSymbols);
    list.remove(event.symbol);
    _unsubscribeFromStockUseCase(event.symbol);
    emit(contentState.copyWith(subscribedSymbols: list));
  }

  void _getPriceUpdates() {
    _getPriceUpdatesUseCase(
      onMessageReceived: (model) => add(
        StocksListEvent.updatePrice(model.symbol, model.price),
      ),
    );
  }

  void _updatePrice(
    Emitter<StocksListState> emit,
    _UpdatePriceEvent event,
  ) {
    final contentState = state.mapOrNull(content: (value) => value);
    if (contentState != null) {
      final map = Map<String, double>.from(contentState.stockPrices);
      map[event.symbol] = event.price;

      emit(contentState.copyWith(stockPrices: map));
    }
  }

  void _search(
    Emitter<StocksListState> emit,
    _SearchEvent event,
  ) {
    final contentState = state.mapOrNull(content: (value) => value);
    if (contentState != null) {
      if (event.query.isEmpty) {
        emit(contentState.copyWith(filteredStocks: contentState.listOfStocks));
        return;
      }

      final query = event.query.toLowerCase();

      final filteredStocks = contentState.listOfStocks
          .where((element) =>
              element.symbol.toLowerCase().contains(query) ||
              element.description.toLowerCase().contains(query))
          .toList();

      emit(contentState.copyWith(filteredStocks: filteredStocks));
    }
  }

  @override
  Future<void> close() {
    _closeLiveUpdatesConnectionUseCase();
    return super.close();
  }
}
