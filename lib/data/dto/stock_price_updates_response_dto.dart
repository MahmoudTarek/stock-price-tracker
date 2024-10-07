import 'package:json_annotation/json_annotation.dart';
import 'package:stocks_price_tracker/data/dto/stock_price_dto.dart';

part 'stock_price_updates_response_dto.g.dart';

@JsonSerializable(createToJson: false)
class StockPriceUpdatesResponseDto {
  StockPriceUpdatesResponseDto(
    this.data,
  );

  factory StockPriceUpdatesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$StockPriceUpdatesResponseDtoFromJson(json);

  List<StockPriceDto>? data;
}
