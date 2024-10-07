import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/widget/stock_list_item.dart';

void main() {
  group('StockListItem Widget Tests', () {
    testWidgets('displays stock information with price',
        (WidgetTester tester) async {
      const stockModel = StockModel(
        symbol: 'AAPL',
        displaySymbol: 'AAPL',
        description: 'Apple Inc.',
      );
      const price = 150.1234;

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: StockListItem(model: stockModel, price: price),
          ),
        ),
      );

      // Assert
      expect(find.text('AAPL'), findsOneWidget);
      expect(find.text('Apple Inc.'), findsOneWidget);
      expect(find.text(r'$150.1234'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets('displays loading indicator when price is null',
        (WidgetTester tester) async {
      const stockModel = StockModel(
        symbol: 'AAPL',
        displaySymbol: 'AAPL',
        description: 'Apple Inc.',
      );

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: StockListItem(model: stockModel, price: null),
          ),
        ),
      );

      expect(find.text('AAPL'), findsOneWidget);
      expect(find.text('Apple Inc.'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.textContaining(r'$'), findsNothing);
    });
  });
}
