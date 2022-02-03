// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StockModelTearOff {
  const _$StockModelTearOff();

  StockData call(String? date, String? transactionType, num? price,
      int? quantity, String? stockType, String? scrip) {
    return StockData(
      date,
      transactionType,
      price,
      quantity,
      stockType,
      scrip,
    );
  }
}

/// @nodoc
const $StockModel = _$StockModelTearOff();

/// @nodoc
mixin _$StockModel {
  String? get date => throw _privateConstructorUsedError;
  String? get transactionType => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get stockType => throw _privateConstructorUsedError;
  String? get scrip => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockModelCopyWith<StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockModelCopyWith<$Res> {
  factory $StockModelCopyWith(
          StockModel value, $Res Function(StockModel) then) =
      _$StockModelCopyWithImpl<$Res>;
  $Res call(
      {String? date,
      String? transactionType,
      num? price,
      int? quantity,
      String? stockType,
      String? scrip});
}

/// @nodoc
class _$StockModelCopyWithImpl<$Res> implements $StockModelCopyWith<$Res> {
  _$StockModelCopyWithImpl(this._value, this._then);

  final StockModel _value;
  // ignore: unused_field
  final $Res Function(StockModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? transactionType = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? stockType = freezed,
    Object? scrip = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      stockType: stockType == freezed
          ? _value.stockType
          : stockType // ignore: cast_nullable_to_non_nullable
              as String?,
      scrip: scrip == freezed
          ? _value.scrip
          : scrip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $StockDataCopyWith<$Res> implements $StockModelCopyWith<$Res> {
  factory $StockDataCopyWith(StockData value, $Res Function(StockData) then) =
      _$StockDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? date,
      String? transactionType,
      num? price,
      int? quantity,
      String? stockType,
      String? scrip});
}

/// @nodoc
class _$StockDataCopyWithImpl<$Res> extends _$StockModelCopyWithImpl<$Res>
    implements $StockDataCopyWith<$Res> {
  _$StockDataCopyWithImpl(StockData _value, $Res Function(StockData) _then)
      : super(_value, (v) => _then(v as StockData));

  @override
  StockData get _value => super._value as StockData;

  @override
  $Res call({
    Object? date = freezed,
    Object? transactionType = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? stockType = freezed,
    Object? scrip = freezed,
  }) {
    return _then(StockData(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      stockType == freezed
          ? _value.stockType
          : stockType // ignore: cast_nullable_to_non_nullable
              as String?,
      scrip == freezed
          ? _value.scrip
          : scrip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StockData with DiagnosticableTreeMixin implements StockData {
  const _$StockData(this.date, this.transactionType, this.price, this.quantity,
      this.stockType, this.scrip);

  @override
  final String? date;
  @override
  final String? transactionType;
  @override
  final num? price;
  @override
  final int? quantity;
  @override
  final String? stockType;
  @override
  final String? scrip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StockModel(date: $date, transactionType: $transactionType, price: $price, quantity: $quantity, stockType: $stockType, scrip: $scrip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StockModel'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('transactionType', transactionType))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('stockType', stockType))
      ..add(DiagnosticsProperty('scrip', scrip));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockData &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.stockType, stockType) &&
            const DeepCollectionEquality().equals(other.scrip, scrip));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(transactionType),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(stockType),
      const DeepCollectionEquality().hash(scrip));

  @JsonKey(ignore: true)
  @override
  $StockDataCopyWith<StockData> get copyWith =>
      _$StockDataCopyWithImpl<StockData>(this, _$identity);
}

abstract class StockData implements StockModel {
  const factory StockData(String? date, String? transactionType, num? price,
      int? quantity, String? stockType, String? scrip) = _$StockData;

  @override
  String? get date;
  @override
  String? get transactionType;
  @override
  num? get price;
  @override
  int? get quantity;
  @override
  String? get stockType;
  @override
  String? get scrip;
  @override
  @JsonKey(ignore: true)
  $StockDataCopyWith<StockData> get copyWith =>
      throw _privateConstructorUsedError;
}
