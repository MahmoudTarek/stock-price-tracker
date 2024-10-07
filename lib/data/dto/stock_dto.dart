import 'package:json_annotation/json_annotation.dart';

part 'stock_dto.g.dart';

@JsonSerializable(createToJson: false)
class StockDto {
  StockDto({
    this.displaySymbol,
    this.symbol,
    this.description,
  });

  factory StockDto.fromJson(Map<String, dynamic> json) =>
      _$StockDtoFromJson(json);

  String? displaySymbol;
  String? symbol;
  String? description;
}
