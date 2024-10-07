// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:stocks_price_tracker/data/datasource/stocks_remote_data_source.dart'
    as _i913;
import 'package:stocks_price_tracker/data/mapper/stock_dto_mapper.dart'
    as _i674;
import 'package:stocks_price_tracker/data/mapper/stock_price_dto_mapper.dart'
    as _i879;
import 'package:stocks_price_tracker/data/stocks_repository_impl.dart' as _i138;
import 'package:stocks_price_tracker/domain/stocks_repository.dart' as _i324;
import 'package:stocks_price_tracker/domain/use_case/close_live_updates_connection_use_case.dart'
    as _i408;
import 'package:stocks_price_tracker/domain/use_case/connect_to_live_updates_use_case.dart'
    as _i642;
import 'package:stocks_price_tracker/domain/use_case/get_price_updates_use_case.dart'
    as _i1018;
import 'package:stocks_price_tracker/domain/use_case/get_stocks_use_case.dart'
    as _i151;
import 'package:stocks_price_tracker/domain/use_case/subscribe_to_stock_use_case.dart'
    as _i819;
import 'package:stocks_price_tracker/domain/use_case/unsubscribe_from_stock_use_case.dart'
    as _i727;
import 'package:stocks_price_tracker/network/ws_manager.dart' as _i323;
import 'package:stocks_price_tracker/presentation/stocks_list/bloc/stocks_list_bloc.dart'
    as _i729;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i674.StockDtoMapper>(() => _i674.StockDtoMapper());
    gh.factory<_i879.StockPriceDtoMapper>(() => _i879.StockPriceDtoMapper());
    gh.lazySingleton<_i913.StocksRemoteDataSource>(
        () => _i913.StocksRemoteDataSource());
    gh.lazySingleton<_i323.WSManager>(() => _i323.WSManagerImpl());
    gh.lazySingleton<_i324.StocksRepository>(() => _i138.StocksRepositoryImpl(
          gh<_i913.StocksRemoteDataSource>(),
          gh<_i674.StockDtoMapper>(),
          gh<_i879.StockPriceDtoMapper>(),
          gh<_i323.WSManager>(),
        ));
    gh.factory<_i151.GetStocksUseCase>(
        () => _i151.GetStocksUseCase(gh<_i324.StocksRepository>()));
    gh.factory<_i727.UnsubscribeFromStockUseCase>(
        () => _i727.UnsubscribeFromStockUseCase(gh<_i324.StocksRepository>()));
    gh.factory<_i819.SubscribeToStockUseCase>(
        () => _i819.SubscribeToStockUseCase(gh<_i324.StocksRepository>()));
    gh.factory<_i1018.GetPriceUpdatesUseCase>(
        () => _i1018.GetPriceUpdatesUseCase(gh<_i324.StocksRepository>()));
    gh.factory<_i408.CloseLiveUpdatesConnectionUseCase>(() =>
        _i408.CloseLiveUpdatesConnectionUseCase(gh<_i324.StocksRepository>()));
    gh.factory<_i642.ConnectToLiveUpdatesUseCase>(
        () => _i642.ConnectToLiveUpdatesUseCase(gh<_i324.StocksRepository>()));
    gh.factory<_i729.StocksListBloc>(() => _i729.StocksListBloc(
          gh<_i151.GetStocksUseCase>(),
          gh<_i642.ConnectToLiveUpdatesUseCase>(),
          gh<_i408.CloseLiveUpdatesConnectionUseCase>(),
          gh<_i819.SubscribeToStockUseCase>(),
          gh<_i727.UnsubscribeFromStockUseCase>(),
          gh<_i1018.GetPriceUpdatesUseCase>(),
        ));
    return this;
  }
}
