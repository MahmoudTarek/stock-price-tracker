// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockPriceDto _$StockPriceDtoFromJson(Map<String, dynamic> json) =>
    StockPriceDto(
      symbol: json['s'] as String?,
      price: (json['p'] as num?)?.toDouble(),
    );
