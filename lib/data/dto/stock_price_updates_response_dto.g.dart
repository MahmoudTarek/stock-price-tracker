// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_price_updates_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockPriceUpdatesResponseDto _$StockPriceUpdatesResponseDtoFromJson(
        Map<String, dynamic> json) =>
    StockPriceUpdatesResponseDto(
      (json['data'] as List<dynamic>?)
          ?.map((e) => StockPriceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
