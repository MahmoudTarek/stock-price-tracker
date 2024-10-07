import 'package:json_annotation/json_annotation.dart';

part 'stock_price_dto.g.dart';

@JsonSerializable(createToJson: false)
class StockPriceDto {
  StockPriceDto(
    this.symbol,
    this.price,
  );

  factory StockPriceDto.fromJson(Map<String, dynamic> json) =>
      _$StockPriceDtoFromJson(json);

  @JsonKey(name: 'p')
  double? price;
  @JsonKey(name: 's')
  String? symbol;
}
