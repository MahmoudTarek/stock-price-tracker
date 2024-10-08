import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/data/data_source/stocks_remote_data_source.dart';
import 'package:stocks_price_tracker/data/dto/stock_dto.dart';
import 'package:stocks_price_tracker/data/dto/stock_price_updates_response_dto.dart';
import 'package:stocks_price_tracker/data/dto/stock_subscription_dto.dart';
import 'package:stocks_price_tracker/data/mapper/stock_dto_mapper.dart';
import 'package:stocks_price_tracker/data/mapper/stock_price_dto_mapper.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';
import 'package:stocks_price_tracker/network/app_exception.dart';
import 'package:stocks_price_tracker/network/endpoints.dart';
import 'package:stocks_price_tracker/network/ws_manager.dart';

@LazySingleton(as: StocksRepository)
class StocksRepositoryImpl implements StocksRepository {
  StocksRepositoryImpl(
    this._remoteSource,
    this._stockDtoMapper,
    this._stockPriceDtoMapper,
    this._wsManager,
  );

  final StocksRemoteDataSource _remoteSource;
  final StockDtoMapper _stockDtoMapper;
  final StockPriceDtoMapper _stockPriceDtoMapper;
  final WSManager _wsManager;

  @override
  Future<List<StockModel>> getStocks() async {
    try {
      final response = await _remoteSource.getStocks();

      final list = (response.data as List<dynamic>)
          .map((e) => StockDto.fromJson(e))
          .toList();

      return list.map((e) => _stockDtoMapper.map(e)).toList();
    } catch (exception) {
      if (exception is AppException) {
        rethrow;
      } else {
        throw AppException.defaultException();
      }
    }
  }

  @override
  void connectToLiveUpdates() {
    _wsManager.setUrl('${Endpoints.pricesWS}?token=${Endpoints.apiKey}');
    _wsManager.connect();
  }

  @override
  void closeConnection() {
    _wsManager.close();
  }

  @override
  void getStocksPricesUpdates({OnLivePriceUpdateReceived? onMessageReceived}) {
    _wsManager.listen(onMessageReceived: (message) {
      debugPrint('WS Message: $message');
      final dto = StockPriceUpdatesResponseDto.fromJson(json.decode(message));
      dto.data?.forEach((element) {
        onMessageReceived?.call(_stockPriceDtoMapper.map(element));
      });
    });
  }

  @override
  void subscribeToStock(String symbol) {
    final dto = StockSubscriptionDto(
        type: StockSubscriptionType.subscribe, symbol: symbol);

    debugPrint('WS Subscribe: $symbol');
    _wsManager.sendMessage(
      json.encode(dto.toJson()),
    );
  }

  @override
  void unsubscribeFromStock(String symbol) {
    final dto = StockSubscriptionDto(
        type: StockSubscriptionType.unsubscribe, symbol: symbol);

    debugPrint('WS Unsubscribe: $symbol');
    _wsManager.sendMessage(
      json.encode(dto.toJson()),
    );
  }
}
