// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_subscription_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockSubscriptionDto _$StockSubscriptionDtoFromJson(
        Map<String, dynamic> json) =>
    StockSubscriptionDto(
      type: $enumDecodeNullable(_$StockSubscriptionTypeEnumMap, json['type']),
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$StockSubscriptionDtoToJson(
        StockSubscriptionDto instance) =>
    <String, dynamic>{
      'type': _$StockSubscriptionTypeEnumMap[instance.type],
      'symbol': instance.symbol,
    };

const _$StockSubscriptionTypeEnumMap = {
  StockSubscriptionType.subscribe: 'subscribe',
  StockSubscriptionType.unsubscribe: 'unsubscribe',
};
