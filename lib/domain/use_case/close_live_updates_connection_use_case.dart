import 'package:injectable/injectable.dart';
import 'package:stocks_price_tracker/domain/stocks_repository.dart';

@injectable
class CloseLiveUpdatesConnectionUseCase {
  CloseLiveUpdatesConnectionUseCase(
    this._repository,
  );

  final StocksRepository _repository;

  void call() {
    _repository.closeConnection();
  }
}
