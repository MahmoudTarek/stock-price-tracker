import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/model/stock_price_model.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/bloc/stocks_list_bloc.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/stocks_list_page.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/widget/stock_list_item.dart';

@GenerateNiceMocks([
  MockSpec<StocksListBloc>(),
])
import 'stocks_list_page_test.mocks.dart';

void main() {
  late MockStocksListBloc mockBloc;

  setUp(() {
    mockBloc = MockStocksListBloc();
  });

  tearDown(() {
    mockBloc.close();
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<StocksListBloc>(
        create: (_) => mockBloc,
        child: const StocksListPage(),
      ),
    );
  }

  testWidgets('shows loading indicator when state is loading',
      (WidgetTester tester) async {
    when(mockBloc.state).thenReturn(const StocksListState.loading());

    await tester.pumpWidget(createTestWidget());

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('shows error message when state is error',
      (WidgetTester tester) async {
    when(mockBloc.state).thenReturn(const StocksListState.error());

    await tester.pumpWidget(createTestWidget());

    expect(find.text('Error'), findsOneWidget);
  });

  testWidgets('shows stock list when state is content',
      (WidgetTester tester) async {
    const mockStock =
        StockModel(symbol: 'AAPL', description: 'Apple', displaySymbol: 'AAPL');
    const mockPrice = StockPriceModel(symbol: 'AAPL', price: 150.0);

    when(mockBloc.state).thenReturn(StocksListState.content(
      filteredStocks: [mockStock],
      stockPrices: {mockStock.symbol: mockPrice.price},
    ));

    await tester.runAsync(() async {
      await tester.pumpWidget(createTestWidget());
      expect(find.byType(StockListItem), findsOneWidget);
      expect(find.text('Apple'), findsOneWidget);
    });

    await tester.pumpAndSettle();
  });
}
