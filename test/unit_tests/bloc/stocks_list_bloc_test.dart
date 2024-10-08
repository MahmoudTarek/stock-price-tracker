import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/use_case/close_live_updates_connection_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/connect_to_live_updates_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/get_price_updates_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/get_stocks_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/subscribe_to_stock_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/unsubscribe_from_stock_use_case.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/bloc/stocks_list_bloc.dart';

@GenerateNiceMocks([
  MockSpec<GetStocksUseCase>(),
  MockSpec<ConnectToLiveUpdatesUseCase>(),
  MockSpec<CloseLiveUpdatesConnectionUseCase>(),
  MockSpec<SubscribeToStockUseCase>(),
  MockSpec<UnsubscribeFromStockUseCase>(),
  MockSpec<GetPriceUpdatesUseCase>(),
])
import 'stocks_list_bloc_test.mocks.dart';

void main() {
  late StocksListBloc stocksListBloc;
  late MockGetStocksUseCase mockGetStocksUseCase;
  late MockConnectToLiveUpdatesUseCase mockConnectToLiveUpdatesUseCase;
  late MockCloseLiveUpdatesConnectionUseCase
      mockCloseLiveUpdatesConnectionUseCase;
  late MockSubscribeToStockUseCase mockSubscribeToStockUseCase;
  late MockUnsubscribeFromStockUseCase mockUnsubscribeFromStockUseCase;
  late MockGetPriceUpdatesUseCase mockGetPriceUpdatesUseCase;

  setUp(() {
    mockGetStocksUseCase = MockGetStocksUseCase();
    mockConnectToLiveUpdatesUseCase = MockConnectToLiveUpdatesUseCase();
    mockCloseLiveUpdatesConnectionUseCase =
        MockCloseLiveUpdatesConnectionUseCase();
    mockSubscribeToStockUseCase = MockSubscribeToStockUseCase();
    mockUnsubscribeFromStockUseCase = MockUnsubscribeFromStockUseCase();
    mockGetPriceUpdatesUseCase = MockGetPriceUpdatesUseCase();

    stocksListBloc = StocksListBloc(
      mockGetStocksUseCase,
      mockConnectToLiveUpdatesUseCase,
      mockCloseLiveUpdatesConnectionUseCase,
      mockSubscribeToStockUseCase,
      mockUnsubscribeFromStockUseCase,
      mockGetPriceUpdatesUseCase,
    );
  });

  test('should set initial state', () {
    expect(stocksListBloc.state, const StocksListState.loading());
  });

  test('should emit content state with stocks', () async {
    final stocks = [
      const StockModel(
          symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
    ];
    when(mockGetStocksUseCase.call()).thenAnswer((_) async => stocks);

    stocksListBloc.add(const StocksListEvent.init());

    await expectLater(
      stocksListBloc.stream,
      emitsInOrder([
        const StocksListState.content(),
        StocksListState.content(
          listOfStocks: stocks,
          filteredStocks: stocks,
        ),
      ]),
    );
  });

  group('subscribe event', () {
    test('should add symbol to subscribedSymbols and emit new state', () async {
      final stocks = [
        const StockModel(
            symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
      ];
      when(mockGetStocksUseCase()).thenAnswer((_) async => stocks);
      stocksListBloc.add(const StocksListEvent.init());

      const symbol = 'AAPL';

      stocksListBloc.add(const StocksListEvent.subscribe(symbol));

      await expectLater(
        stocksListBloc.stream,
        emitsInOrder([
          isA<StocksListState>(),
          isA<StocksListState>().having(
            (state) => state.maybeMap(
              content: (value) => value.subscribedSymbols,
              orElse: () => null,
            ),
            'subscribedSymbols',
            [symbol],
          ),
        ]),
      );
    });
  });

  group('search event', () {
    test('should filter stocks based on query', () async {
      final stocks = [
        const StockModel(
            symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
        const StockModel(
            symbol: 'GOOGL', displaySymbol: 'GOOGL', description: 'Google LLC'),
      ];
      when(mockGetStocksUseCase()).thenAnswer((_) async => stocks);
      stocksListBloc.add(const StocksListEvent.init());

      stocksListBloc.add(const StocksListEvent.search('Apple'));

      await expectLater(
        stocksListBloc.stream,
        emitsInOrder([
          isA<StocksListState>(),
          isA<StocksListState>().having(
            (state) => state.maybeMap(
              content: (value) => value.filteredStocks,
              orElse: () => null,
            ),
            'filteredStocks',
            [stocks[0]],
          ),
        ]),
      );
    });
  });
}
