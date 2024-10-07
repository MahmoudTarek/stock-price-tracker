import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_price_model.freezed.dart';

@freezed
class StockPriceModel with _$StockPriceModel {
  const factory StockPriceModel({
    required String symbol,
    required double price,
  }) = _StockPriceModel;
}
