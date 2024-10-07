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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(_SubscribeEvent value) subscribe,
    required TResult Function(_UnsubscribeEvent value) unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
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
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
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
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
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
  }) {
    return subscribe(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
  }) {
    return subscribe?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
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
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
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
  }) {
    return unsubscribe(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? subscribe,
    TResult? Function(String symbol)? unsubscribe,
  }) {
    return unsubscribe?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? subscribe,
    TResult Function(String symbol)? unsubscribe,
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
  }) {
    return unsubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_SubscribeEvent value)? subscribe,
    TResult? Function(_UnsubscribeEvent value)? unsubscribe,
  }) {
    return unsubscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_SubscribeEvent value)? subscribe,
    TResult Function(_UnsubscribeEvent value)? unsubscribe,
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
mixin _$StocksListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)
        content,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
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
            List<int> subscribedIndices,
            Map<String, double> stockPrices)
        content,
    required TResult Function() error,
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
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult? Function()? error,
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
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult Function()? error,
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
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
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
abstract class _$$ContentImplCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<StockModel> listOfStocks,
      List<StockModel> filteredStocks,
      List<int> subscribedIndices,
      Map<String, double> stockPrices});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$StocksListStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfStocks = null,
    Object? filteredStocks = null,
    Object? subscribedIndices = null,
    Object? stockPrices = null,
  }) {
    return _then(_$ContentImpl(
      listOfStocks: null == listOfStocks
          ? _value._listOfStocks
          : listOfStocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      filteredStocks: null == filteredStocks
          ? _value._filteredStocks
          : filteredStocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>,
      subscribedIndices: null == subscribedIndices
          ? _value._subscribedIndices
          : subscribedIndices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      stockPrices: null == stockPrices
          ? _value._stockPrices
          : stockPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(
      {final List<StockModel> listOfStocks = const [],
      final List<StockModel> filteredStocks = const [],
      final List<int> subscribedIndices = const [],
      final Map<String, double> stockPrices = const {}})
      : _listOfStocks = listOfStocks,
        _filteredStocks = filteredStocks,
        _subscribedIndices = subscribedIndices,
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

  final List<int> _subscribedIndices;
  @override
  @JsonKey()
  List<int> get subscribedIndices {
    if (_subscribedIndices is EqualUnmodifiableListView)
      return _subscribedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribedIndices);
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
    return 'StocksListState.content(listOfStocks: $listOfStocks, filteredStocks: $filteredStocks, subscribedIndices: $subscribedIndices, stockPrices: $stockPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfStocks, _listOfStocks) &&
            const DeepCollectionEquality()
                .equals(other._filteredStocks, _filteredStocks) &&
            const DeepCollectionEquality()
                .equals(other._subscribedIndices, _subscribedIndices) &&
            const DeepCollectionEquality()
                .equals(other._stockPrices, _stockPrices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listOfStocks),
      const DeepCollectionEquality().hash(_filteredStocks),
      const DeepCollectionEquality().hash(_subscribedIndices),
      const DeepCollectionEquality().hash(_stockPrices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)
        content,
    required TResult Function() error,
  }) {
    return content(
        listOfStocks, filteredStocks, subscribedIndices, stockPrices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult? Function()? error,
  }) {
    return content?.call(
        listOfStocks, filteredStocks, subscribedIndices, stockPrices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(
          listOfStocks, filteredStocks, subscribedIndices, stockPrices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements StocksListState {
  const factory _Content(
      {final List<StockModel> listOfStocks,
      final List<StockModel> filteredStocks,
      final List<int> subscribedIndices,
      final Map<String, double> stockPrices}) = _$ContentImpl;

  List<StockModel> get listOfStocks;
  List<StockModel> get filteredStocks;
  List<int> get subscribedIndices;
  Map<String, double> get stockPrices;
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StocksListStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'StocksListState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
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
            List<int> subscribedIndices,
            Map<String, double> stockPrices)
        content,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StockModel> listOfStocks,
            List<StockModel> filteredStocks,
            List<int> subscribedIndices,
            Map<String, double> stockPrices)?
        content,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
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
  const factory _Error() = _$ErrorImpl;
}
