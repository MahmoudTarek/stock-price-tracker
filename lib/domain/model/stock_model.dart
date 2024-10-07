import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';

@freezed
class StockModel with _$StockModel {
  const factory StockModel({
    required String description,
    required String displaySymbol,
    required String symbol,
  }) = _StockModel;
}
