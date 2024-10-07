// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockPriceModel {
  String get symbol => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockPriceModelCopyWith<StockPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockPriceModelCopyWith<$Res> {
  factory $StockPriceModelCopyWith(
          StockPriceModel value, $Res Function(StockPriceModel) then) =
      _$StockPriceModelCopyWithImpl<$Res, StockPriceModel>;
  @useResult
  $Res call({String symbol, double price});
}

/// @nodoc
class _$StockPriceModelCopyWithImpl<$Res, $Val extends StockPriceModel>
    implements $StockPriceModelCopyWith<$Res> {
  _$StockPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockPriceModelImplCopyWith<$Res>
    implements $StockPriceModelCopyWith<$Res> {
  factory _$$StockPriceModelImplCopyWith(_$StockPriceModelImpl value,
          $Res Function(_$StockPriceModelImpl) then) =
      __$$StockPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, double price});
}

/// @nodoc
class __$$StockPriceModelImplCopyWithImpl<$Res>
    extends _$StockPriceModelCopyWithImpl<$Res, _$StockPriceModelImpl>
    implements _$$StockPriceModelImplCopyWith<$Res> {
  __$$StockPriceModelImplCopyWithImpl(
      _$StockPriceModelImpl _value, $Res Function(_$StockPriceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? price = null,
  }) {
    return _then(_$StockPriceModelImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$StockPriceModelImpl implements _StockPriceModel {
  const _$StockPriceModelImpl({required this.symbol, required this.price});

  @override
  final String symbol;
  @override
  final double price;

  @override
  String toString() {
    return 'StockPriceModel(symbol: $symbol, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockPriceModelImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockPriceModelImplCopyWith<_$StockPriceModelImpl> get copyWith =>
      __$$StockPriceModelImplCopyWithImpl<_$StockPriceModelImpl>(
          this, _$identity);
}

abstract class _StockPriceModel implements StockPriceModel {
  const factory _StockPriceModel(
      {required final String symbol,
      required final double price}) = _$StockPriceModelImpl;

  @override
  String get symbol;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$StockPriceModelImplCopyWith<_$StockPriceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
