// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stocks_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StocksListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) subscribe,
    required TResult Function(String symbol) unsubscribe,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_SubscribeEvent value) subscribe,
    required TResult Function(_UnsubscribeEvent value) unsubscribe,
    required TResult Function(_UpdatePriceEvent value) updatePrice,
    required TResult Function(_SearchEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
    TResult? Function(_UpdatePriceEvent value)? updatePrice,
    TResult? Function(_SearchEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
    TResult Function(_UpdatePriceEvent value)? updatePrice,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksListEventCopyWith<$Res> {
  factory $StocksListEventCopyWith(
          StocksListEvent value, $Res Function(StocksListEvent) then) =
      _$StocksListEventCopyWithImpl<$Res, StocksListEvent>;
}

/// @nodoc
class _$StocksListEventCopyWithImpl<$Res, $Val extends StocksListEvent>
    implements $StocksListEventCopyWith<$Res> {
  _$StocksListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitEventImplCopyWith<$Res> {
  factory _$$InitEventImplCopyWith(
          _$InitEventImpl value, $Res Function(_$InitEventImpl) then) =
      __$$InitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitEventImplCopyWithImpl<$Res>
    extends _$StocksListEventCopyWithImpl<$Res, _$InitEventImpl>
    implements _$$InitEventImplCopyWith<$Res> {
  __$$InitEventImplCopyWithImpl(
      _$InitEventImpl _value, $Res Function(_$InitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitEventImpl implements _InitEvent {
  const _$InitEventImpl();

  @override
  String toString() {
    return 'StocksListEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) subscribe,
    required TResult Function(String symbol) unsubscribe,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(String query) search,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(String query)? search,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_SubscribeEvent value) subscribe,
    required TResult Function(_UnsubscribeEvent value) unsubscribe,
    required TResult Function(_UpdatePriceEvent value) updatePrice,
    required TResult Function(_SearchEvent value) search,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
    TResult? Function(_UpdatePriceEvent value)? updatePrice,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
    TResult Function(_UpdatePriceEvent value)? updatePrice,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements StocksListEvent {
  const factory _InitEvent() = _$InitEventImpl;
}

/// @nodoc
abstract class _$$SubscribeEventImplCopyWith<$Res> {
  factory _$$SubscribeEventImplCopyWith(_$SubscribeEventImpl value,
          $Res Function(_$SubscribeEventImpl) then) =
      __$$SubscribeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$SubscribeEventImplCopyWithImpl<$Res>
    extends _$StocksListEventCopyWithImpl<$Res, _$SubscribeEventImpl>
    implements _$$SubscribeEventImplCopyWith<$Res> {
  __$$SubscribeEventImplCopyWithImpl(
      _$SubscribeEventImpl _value, $Res Function(_$SubscribeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$SubscribeEventImpl(
      null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubscribeEventImpl implements _SubscribeEvent {
  const _$SubscribeEventImpl(this.symbol);

  @override
  final String symbol;

  @override
  String toString() {
    return 'StocksListEvent.subscribe(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeEventImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscribeEventImplCopyWith<_$SubscribeEventImpl> get copyWith =>
      __$$SubscribeEventImplCopyWithImpl<_$SubscribeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) subscribe,
    required TResult Function(String symbol) unsubscribe,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(String query) search,
  }) {
    return subscribe(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(String query)? search,
  }) {
    return subscribe?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_SubscribeEvent value) subscribe,
    required TResult Function(_UnsubscribeEvent value) unsubscribe,
    required TResult Function(_UpdatePriceEvent value) updatePrice,
    required TResult Function(_SearchEvent value) search,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
    TResult? Function(_UpdatePriceEvent value)? updatePrice,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
    TResult Function(_UpdatePriceEvent value)? updatePrice,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _SubscribeEvent implements StocksListEvent {
  const factory _SubscribeEvent(final String symbol) = _$SubscribeEventImpl;

  String get symbol;
  @JsonKey(ignore: true)
  _$$SubscribeEventImplCopyWith<_$SubscribeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnsubscribeEventImplCopyWith<$Res> {
  factory _$$UnsubscribeEventImplCopyWith(_$UnsubscribeEventImpl value,
          $Res Function(_$UnsubscribeEventImpl) then) =
      __$$UnsubscribeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$UnsubscribeEventImplCopyWithImpl<$Res>
    extends _$StocksListEventCopyWithImpl<$Res, _$UnsubscribeEventImpl>
    implements _$$UnsubscribeEventImplCopyWith<$Res> {
  __$$UnsubscribeEventImplCopyWithImpl(_$UnsubscribeEventImpl _value,
      $Res Function(_$UnsubscribeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$UnsubscribeEventImpl(
      null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnsubscribeEventImpl implements _UnsubscribeEvent {
  const _$UnsubscribeEventImpl(this.symbol);

  @override
  final String symbol;

  @override
  String toString() {
    return 'StocksListEvent.unsubscribe(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsubscribeEventImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsubscribeEventImplCopyWith<_$UnsubscribeEventImpl> get copyWith =>
      __$$UnsubscribeEventImplCopyWithImpl<_$UnsubscribeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) subscribe,
    required TResult Function(String symbol) unsubscribe,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(String query) search,
  }) {
    return unsubscribe(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(String query)? search,
  }) {
    return unsubscribe?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_SubscribeEvent value) subscribe,
    required TResult Function(_UnsubscribeEvent value) unsubscribe,
    required TResult Function(_UpdatePriceEvent value) updatePrice,
    required TResult Function(_SearchEvent value) search,
  }) {
    return unsubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
    TResult? Function(_UpdatePriceEvent value)? updatePrice,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return unsubscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
    TResult Function(_UpdatePriceEvent value)? updatePrice,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(this);
    }
    return orElse();
  }
}

abstract class _UnsubscribeEvent implements StocksListEvent {
  const factory _UnsubscribeEvent(final String symbol) = _$UnsubscribeEventImpl;

  String get symbol;
  @JsonKey(ignore: true)
  _$$UnsubscribeEventImplCopyWith<_$UnsubscribeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePriceEventImplCopyWith<$Res> {
  factory _$$UpdatePriceEventImplCopyWith(_$UpdatePriceEventImpl value,
          $Res Function(_$UpdatePriceEventImpl) then) =
      __$$UpdatePriceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String symbol, double price});
}

/// @nodoc
class __$$UpdatePriceEventImplCopyWithImpl<$Res>
    extends _$StocksListEventCopyWithImpl<$Res, _$UpdatePriceEventImpl>
    implements _$$UpdatePriceEventImplCopyWith<$Res> {
  __$$UpdatePriceEventImplCopyWithImpl(_$UpdatePriceEventImpl _value,
      $Res Function(_$UpdatePriceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? price = null,
  }) {
    return _then(_$UpdatePriceEventImpl(
      null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdatePriceEventImpl implements _UpdatePriceEvent {
  const _$UpdatePriceEventImpl(this.symbol, this.price);

  @override
  final String symbol;
  @override
  final double price;

  @override
  String toString() {
    return 'StocksListEvent.updatePrice(symbol: $symbol, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePriceEventImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePriceEventImplCopyWith<_$UpdatePriceEventImpl> get copyWith =>
      __$$UpdatePriceEventImplCopyWithImpl<_$UpdatePriceEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) subscribe,
    required TResult Function(String symbol) unsubscribe,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(String query) search,
  }) {
    return updatePrice(symbol, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(String query)? search,
  }) {
    return updatePrice?.call(symbol, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(symbol, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_SubscribeEvent value) subscribe,
    required TResult Function(_UnsubscribeEvent value) unsubscribe,
    required TResult Function(_UpdatePriceEvent value) updatePrice,
    required TResult Function(_SearchEvent value) search,
  }) {
    return updatePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
    TResult? Function(_UpdatePriceEvent value)? updatePrice,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return updatePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
    TResult Function(_UpdatePriceEvent value)? updatePrice,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(this);
    }
    return orElse();
  }
}

abstract class _UpdatePriceEvent implements StocksListEvent {
  const factory _UpdatePriceEvent(final String symbol, final double price) =
      _$UpdatePriceEventImpl;

  String get symbol;
  double get price;
  @JsonKey(ignore: true)
  _$$UpdatePriceEventImplCopyWith<_$UpdatePriceEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventImplCopyWith<$Res> {
  factory _$$SearchEventImplCopyWith(
          _$SearchEventImpl value, $Res Function(_$SearchEventImpl) then) =
      __$$SearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchEventImplCopyWithImpl<$Res>
    extends _$StocksListEventCopyWithImpl<$Res, _$SearchEventImpl>
    implements _$$SearchEventImplCopyWith<$Res> {
  __$$SearchEventImplCopyWithImpl(
      _$SearchEventImpl _value, $Res Function(_$SearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventImpl implements _SearchEvent {
  const _$SearchEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'StocksListEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      __$$SearchEventImplCopyWithImpl<_$SearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) subscribe,
    required TResult Function(String symbol) unsubscribe,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_SubscribeEvent value) subscribe,
    required TResult Function(_UnsubscribeEvent value) unsubscribe,
    required TResult Function(_UpdatePriceEvent value) updatePrice,
    required TResult Function(_SearchEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
    TResult? Function(_UpdatePriceEvent value)? updatePrice,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
    TResult Function(_UpdatePriceEvent value)? updatePrice,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEvent implements StocksListEvent {
  const factory _SearchEvent(final String query) = _$SearchEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StocksListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)
        content,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(StocksListContentState value) content,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(StocksListContentState value)? content,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(StocksListContentState value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksListStateCopyWith<$Res> {
  factory $StocksListStateCopyWith(
          StocksListState value, $Res Function(StocksListState) then) =
      _$StocksListStateCopyWithImpl<$Res, StocksListState>;
}

/// @nodoc
class _$StocksListStateCopyWithImpl<$Res, $Val extends StocksListState>
    implements $StocksListStateCopyWith<$Res> {
  _$StocksListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StocksListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StocksListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)
        content,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(StocksListContentState value) content,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(StocksListContentState value)? content,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(StocksListContentState value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StocksListState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$StocksListContentStateImplCopyWith<$Res> {
  factory _$$StocksListContentStateImplCopyWith(
          _$StocksListContentStateImpl value,
          $Res Function(_$StocksListContentStateImpl) then) =
      __$$StocksListContentStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<StockModel> listOfStocks,
      List<StockModel> filteredStocks,
      List<String> subscribedSymbols,
      Map<String, double> stockPrices});
}

/// @nodoc
class __$$StocksListContentStateImplCopyWithImpl<$Res>
    extends _$StocksListStateCopyWithImpl<$Res, _$StocksListContentStateImpl>
    implements _$$StocksListContentStateImplCopyWith<$Res> {
  __$$StocksListContentStateImplCopyWithImpl(
      _$StocksListContentStateImpl _value,
      $Res Function(_$StocksListContentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfStocks = null,
    Object? filteredStocks = null,
    Object? subscribedSymbols = null,
    Object? stockPrices = null,
  }) {
    return _then(_$StocksListContentStateImpl(
      listOfStocks: null == listOfStocks
          ? _value._listOfStocks
          : listOfStocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      filteredStocks: null == filteredStocks
          ? _value._filteredStocks
          : filteredStocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      subscribedSymbols: null == subscribedSymbols
          ? _value._subscribedSymbols
          : subscribedSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stockPrices: null == stockPrices
          ? _value._stockPrices
          : stockPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc

class _$StocksListContentStateImpl implements StocksListContentState {
  const _$StocksListContentStateImpl(
      {final List<StockModel> listOfStocks = const [],
      final List<StockModel> filteredStocks = const [],
      final List<String> subscribedSymbols = const [],
      final Map<String, double> stockPrices = const {}})
      : _listOfStocks = listOfStocks,
        _filteredStocks = filteredStocks,
        _subscribedSymbols = subscribedSymbols,
        _stockPrices = stockPrices;

  final List<StockModel> _listOfStocks;
  @override
  @JsonKey()
  List<StockModel> get listOfStocks {
    if (_listOfStocks is EqualUnmodifiableListView) return _listOfStocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfStocks);
  }

  final List<StockModel> _filteredStocks;
  @override
  @JsonKey()
  List<StockModel> get filteredStocks {
    if (_filteredStocks is EqualUnmodifiableListView) return _filteredStocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredStocks);
  }

  final List<String> _subscribedSymbols;
  @override
  @JsonKey()
  List<String> get subscribedSymbols {
    if (_subscribedSymbols is EqualUnmodifiableListView)
      return _subscribedSymbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribedSymbols);
  }

  final Map<String, double> _stockPrices;
  @override
  @JsonKey()
  Map<String, double> get stockPrices {
    if (_stockPrices is EqualUnmodifiableMapView) return _stockPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stockPrices);
  }

  @override
  String toString() {
    return 'StocksListState.content(listOfStocks: $listOfStocks, filteredStocks: $filteredStocks, subscribedSymbols: $subscribedSymbols, stockPrices: $stockPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StocksListContentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfStocks, _listOfStocks) &&
            const DeepCollectionEquality()
                .equals(other._filteredStocks, _filteredStocks) &&
            const DeepCollectionEquality()
                .equals(other._subscribedSymbols, _subscribedSymbols) &&
            const DeepCollectionEquality()
                .equals(other._stockPrices, _stockPrices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listOfStocks),
      const DeepCollectionEquality().hash(_filteredStocks),
      const DeepCollectionEquality().hash(_subscribedSymbols),
      const DeepCollectionEquality().hash(_stockPrices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StocksListContentStateImplCopyWith<_$StocksListContentStateImpl>
      get copyWith => __$$StocksListContentStateImplCopyWithImpl<
          _$StocksListContentStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)
        content,
    required TResult Function(String error) error,
  }) {
    return content(
        listOfStocks, filteredStocks, subscribedSymbols, stockPrices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult? Function(String error)? error,
  }) {
    return content?.call(
        listOfStocks, filteredStocks, subscribedSymbols, stockPrices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(
          listOfStocks, filteredStocks, subscribedSymbols, stockPrices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(StocksListContentState value) content,
    required TResult Function(_Error value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(StocksListContentState value)? content,
    TResult? Function(_Error value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(StocksListContentState value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class StocksListContentState implements StocksListState {
  const factory StocksListContentState(
      {final List<StockModel> listOfStocks,
      final List<StockModel> filteredStocks,
      final List<String> subscribedSymbols,
      final Map<String, double> stockPrices}) = _$StocksListContentStateImpl;

  List<StockModel> get listOfStocks;
  List<StockModel> get filteredStocks;
  List<String> get subscribedSymbols;
  Map<String, double> get stockPrices;
  @JsonKey(ignore: true)
  _$$StocksListContentStateImplCopyWith<_$StocksListContentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StocksListStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StocksListState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)
        content,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<String> subscribedSymbols,
            Map<String, double> stockPrices)?
        content,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(StocksListContentState value) content,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(StocksListContentState value)? content,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(StocksListContentState value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StocksListState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
