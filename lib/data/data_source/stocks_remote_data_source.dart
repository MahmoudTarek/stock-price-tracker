import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/network/network_manager.dart';

@lazySingleton
class StocksRemoteDataSource {
  Future<Response> getStocks() async {
    return await NetworkManager().get(url: "forex/symbol?exchange=oanda");
  }
}
