import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/use_case/close_live_updates_connection_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/connect_to_live_updates_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/get_price_updates_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/get_stocks_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/subscribe_to_stock_use_case.dart';
import 'package:stocks_price_tracker/domain/use_case/unsubscribe_from_stock_use_case.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/bloc/stocks_list_bloc.dart';

class MockGetStocksUseCase extends Mock implements GetStocksUseCase {}

class MockConnectToLiveUpdatesUseCase extends Mock
    implements ConnectToLiveUpdatesUseCase {}

class MockCloseLiveUpdatesConnectionUseCase extends Mock
    implements CloseLiveUpdatesConnectionUseCase {}

class MockSubscribeToStockUseCase extends Mock
    implements SubscribeToStockUseCase {}

class MockUnsubscribeFromStockUseCase extends Mock
    implements UnsubscribeFromStockUseCase {}

class MockGetPriceUpdatesUseCase extends Mock
    implements GetPriceUpdatesUseCase {}

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

  tearDown(() {
    stocksListBloc.close();
  });

  test('should emit content state with stocks', () async {
    // Arrange
    final stocks = [
      StockModel(
          symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
    ];
    when(mockGetStocksUseCase.call()).thenReturn(Future.value(stocks));

    stocksListBloc.add(const StocksListEvent.init());

    await expectLater(
      stocksListBloc.stream,
      emitsInOrder([
        const StocksListState.loading(),
        StocksListState.content(
          listOfStocks: stocks,
          filteredStocks: stocks,
        ),
      ]),
    );
  });
  group('init event', () {
    test('should emit content state with stocks', () async {
      // Arrange
      final stocks = [
        StockModel(
            symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
      ];
      when(mockGetStocksUseCase.call()).thenAnswer((_) async => stocks);

      // Act
      stocksListBloc.add(const StocksListEvent.init());

      // Assert
      await expectLater(
        stocksListBloc.stream,
        emitsInOrder([
          const StocksListState.loading(),
          StocksListState.content(
            listOfStocks: stocks,
            filteredStocks: stocks,
          ),
        ]),
      );
    });
  });

  group('subscribe event', () {
    test('should add symbol to subscribedSymbols and emit new state', () async {
      // Arrange
      final stocks = [
        StockModel(
            symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
      ];
      when(mockGetStocksUseCase()).thenAnswer((_) async => stocks);
      stocksListBloc.add(const StocksListEvent.init());
      await Future.delayed(Duration.zero); // Allow state emission

      final symbol = 'AAPL';

      // Act
      stocksListBloc.add(StocksListEvent.subscribe(symbol));

      // Assert
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

  group('unsubscribe event', () {
    test('should remove symbol from subscribedSymbols and emit new state',
        () async {
      // Arrange
      final stocks = [
        StockModel(
            symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
      ];
      when(mockGetStocksUseCase()).thenAnswer((_) async => stocks);
      stocksListBloc.add(const StocksListEvent.init());
      await Future.delayed(Duration.zero); // Allow state emission

      final symbol = 'AAPL';
      stocksListBloc.add(StocksListEvent.subscribe(symbol)); // Subscribe first

      // Act
      stocksListBloc.add(StocksListEvent.unsubscribe(symbol));

      // Assert
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
            [],
          ),
        ]),
      );
    });
  });

  group('search event', () {
    test('should filter stocks based on query', () async {
      // Arrange
      final stocks = [
        StockModel(
            symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
        StockModel(
            symbol: 'GOOGL', displaySymbol: 'GOOGL', description: 'Google LLC'),
      ];
      when(mockGetStocksUseCase()).thenAnswer((_) async => stocks);
      stocksListBloc.add(const StocksListEvent.init());
      await Future.delayed(Duration.zero); // Allow state emission

      // Act
      stocksListBloc.add(StocksListEvent.search('Apple'));

      // Assert
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
            [stocks[0]], // Only Apple should remain
          ),
        ]),
      );
    });

    test('should reset filtered stocks if query is empty', () async {
      // Arrange
      final stocks = [
        StockModel(
            symbol: 'AAPL', displaySymbol: 'AAPL', description: 'Apple Inc.'),
        StockModel(
            symbol: 'GOOGL', displaySymbol: 'GOOGL', description: 'Google LLC'),
      ];
      when(mockGetStocksUseCase()).thenAnswer((_) async => stocks);
      stocksListBloc.add(const StocksListEvent.init());
      await Future.delayed(Duration.zero); // Allow state emission

      // Act
      stocksListBloc.add(StocksListEvent.search('Apple')); // First search
      stocksListBloc.add(const StocksListEvent.search('')); // Reset search

      // Assert
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
            stocks, // Should return to original list
          ),
        ]),
      );
    });
  });
}
