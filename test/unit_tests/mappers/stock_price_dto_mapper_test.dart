import 'package:flutter_test/flutter_test.dart';
import 'package:stocks_price_tracker/data/dto/stock_price_dto.dart';
import 'package:stocks_price_tracker/data/mapper/stock_price_dto_mapper.dart';

void main() {
  late StockPriceDtoMapper stockPriceDtoMapper;

  setUp(() {
    stockPriceDtoMapper = StockPriceDtoMapper();
  });

  group('StockPriceDtoMapper', () {
    test(
        'should map StockPriceDto to StockPriceModel correctly when all fields are non-null',
        () {
      final stockPriceDto = StockPriceDto(
        price: 100.5,
        symbol: 'AAPL',
      );

      final result = stockPriceDtoMapper.map(stockPriceDto);

      expect(result.price, 100.5);
      expect(result.symbol, 'AAPL');
    });

    test(
        'should map StockPriceDto to StockPriceModel with default values when fields are null',
        () {
      final stockPriceDto = StockPriceDto();

      final result = stockPriceDtoMapper.map(stockPriceDto);

      expect(result.price, 0);
      expect(result.symbol, '');
    });

    test('should return default values when dto is null', () {
      final result = stockPriceDtoMapper.map(null);

      expect(result.price, 0);
      expect(result.symbol, '');
    });
  });
}
