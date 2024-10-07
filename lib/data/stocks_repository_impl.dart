import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/data/datasource/stocks_remote_data_source.dart';
import 'package:stocks_price_tracker/data/dto/stock_dto.dart';
import 'package:stocks_price_tracker/data/mapper/stock_dto_mapper.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';

@LazySingleton(as: StocksRepository)
class StocksRepositoryImpl implements StocksRepository {
  StocksRepositoryImpl(
    this._remoteSource,
    this._dtoMapper,
  );

  final StocksRemoteDataSource _remoteSource;
  final StockDtoMapper _dtoMapper;

  @override
  Future<List<StockModel>> getStocks() async {
    final response = await _remoteSource.getStocks();

    final list = (response.data as List<dynamic>)
        .map((e) => StockDto.fromJson(e))
        .toList();

    return list.map((e) => _dtoMapper.map(e)).toList();
  }
}
