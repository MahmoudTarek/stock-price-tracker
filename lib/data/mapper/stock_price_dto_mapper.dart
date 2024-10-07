import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/data/dto/stock_price_dto.dart';
import 'package:stocks_price_tracker/domain/model/stock_price_model.dart';

@injectable
class StockPriceDtoMapper {
  StockPriceModel map(StockPriceDto? dto) {
    return StockPriceModel(
      price: dto?.price ?? 0,
      symbol: dto?.symbol ?? '',
    );
  }
}
