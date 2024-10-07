import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/use_case/get_stocks_use_case.dart';

part 'stocks_list_bloc.freezed.dart';
part 'stocks_list_event.dart';
part 'stocks_list_state.dart';

@injectable
class StocksListBloc extends Bloc<StocksListEvent, StocksListState> {
  StocksListBloc(
    this._getStocksUseCase,
  ) : super(const StocksListState.loading()) {
    on<StocksListEvent>(
      (event, emit) => event.map(
        init: (e) => _init(emit, e),
        subscribe: (e) => _subscribe(emit, e),
        unsubscribe: (e) => _unsubscribe(emit, e),
      ),
    );

    add(const StocksListEvent.init());
  }

  final GetStocksUseCase _getStocksUseCase;

  Future<void> _init(
    Emitter<StocksListState> emit,
    _InitEvent event,
  ) async {
    final stocks = await _getStocksUseCase();

    emit(
      StocksListState.content(filteredStocks: stocks, listOfStocks: stocks),
    );
  }

  void _subscribe(
    Emitter<StocksListState> emit,
    _SubscribeEvent event,
  ) {}

  void _unsubscribe(
    Emitter<StocksListState> emit,
    _UnsubscribeEvent event,
  ) {}
}
