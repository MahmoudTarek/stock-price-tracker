import 'package:json_annotation/json_annotation.dart';

part 'stock_subscription_dto.g.dart';

@JsonEnum()
enum StockSubscriptionType { subscribe, unsubscribe }

@JsonSerializable()
class StockSubscriptionDto {
  StockSubscriptionDto({
    this.type,
    this.symbol,
  });

  factory StockSubscriptionDto.fromJson(Map<String, dynamic> json) =>
      _$StockSubscriptionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StockSubscriptionDtoToJson(this);

  StockSubscriptionType? type;
  String? symbol;
}
