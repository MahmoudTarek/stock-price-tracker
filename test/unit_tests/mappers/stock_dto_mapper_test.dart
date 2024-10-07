import 'package:flutter_test/flutter_test.dart';
import 'package:stocks_price_tracker/data/dto/stock_dto.dart';
import 'package:stocks_price_tracker/data/mapper/stock_dto_mapper.dart';

void main() {
  late StockDtoMapper stockDtoMapper;

  setUp(() {
    stockDtoMapper = StockDtoMapper();
  });

  group('StockDtoMapper', () {
    test(
        'should map StockDto to StockModel correctly when all fields are non-null',
        () {
      final stockDto = StockDto(
        description: 'Test Stock',
        displaySymbol: 'TST',
        symbol: 'TS',
      );

      final result = stockDtoMapper.map(stockDto);

      expect(result.description, 'Test Stock');
      expect(result.displaySymbol, 'TST');
      expect(result.symbol, 'TS');
    });

    test(
        'should map StockDto to StockModel with default values when fields are null',
        () {
      final stockDto = StockDto();

      final result = stockDtoMapper.map(stockDto);

      expect(result.description, '');
      expect(result.displaySymbol, '');
      expect(result.symbol, '');
    });

    test('should return default values when dto is null', () {
      final result = stockDtoMapper.map(null);

      expect(result.description, '');
      expect(result.displaySymbol, '');
      expect(result.symbol, '');
    });
  });
}
