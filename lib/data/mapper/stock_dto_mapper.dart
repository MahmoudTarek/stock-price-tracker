import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/data/dto/stock_dto.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';

@injectable
class StockDtoMapper {
  StockModel map(StockDto? dto) {
    return StockModel(
      description: dto?.description ?? '',
      displaySymbol: dto?.displaySymbol ?? '',
      symbol: dto?.symbol ?? '',
    );
  }
}
