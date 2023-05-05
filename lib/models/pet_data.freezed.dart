// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetData _$PetDataFromJson(Map<String, dynamic> json) {
  return _PetData.fromJson(json);
}

/// @nodoc
mixin _$PetData {
  List<Pet> get pets => throw _privateConstructorUsedError;
  List<Pet> get searchedPets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetDataCopyWith<PetData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDataCopyWith<$Res> {
  factory $PetDataCopyWith(PetData value, $Res Function(PetData) then) =
      _$PetDataCopyWithImpl<$Res, PetData>;
  @useResult
  $Res call({List<Pet> pets, List<Pet> searchedPets});
}

/// @nodoc
class _$PetDataCopyWithImpl<$Res, $Val extends PetData>
    implements $PetDataCopyWith<$Res> {
  _$PetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pets = null,
    Object? searchedPets = null,
  }) {
    return _then(_value.copyWith(
      pets: null == pets
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
      searchedPets: null == searchedPets
          ? _value.searchedPets
          : searchedPets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetDataCopyWith<$Res> implements $PetDataCopyWith<$Res> {
  factory _$$_PetDataCopyWith(
          _$_PetData value, $Res Function(_$_PetData) then) =
      __$$_PetDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pet> pets, List<Pet> searchedPets});
}

/// @nodoc
class __$$_PetDataCopyWithImpl<$Res>
    extends _$PetDataCopyWithImpl<$Res, _$_PetData>
    implements _$$_PetDataCopyWith<$Res> {
  __$$_PetDataCopyWithImpl(_$_PetData _value, $Res Function(_$_PetData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pets = null,
    Object? searchedPets = null,
  }) {
    return _then(_$_PetData(
      pets: null == pets
          ? _value._pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
      searchedPets: null == searchedPets
          ? _value._searchedPets
          : searchedPets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetData implements _PetData {
  const _$_PetData(
      {final List<Pet> pets = const [],
      final List<Pet> searchedPets = const []})
      : _pets = pets,
        _searchedPets = searchedPets;

  factory _$_PetData.fromJson(Map<String, dynamic> json) =>
      _$$_PetDataFromJson(json);

  final List<Pet> _pets;
  @override
  @JsonKey()
  List<Pet> get pets {
    if (_pets is EqualUnmodifiableListView) return _pets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pets);
  }

  final List<Pet> _searchedPets;
  @override
  @JsonKey()
  List<Pet> get searchedPets {
    if (_searchedPets is EqualUnmodifiableListView) return _searchedPets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedPets);
  }

  @override
  String toString() {
    return 'PetData(pets: $pets, searchedPets: $searchedPets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetData &&
            const DeepCollectionEquality().equals(other._pets, _pets) &&
            const DeepCollectionEquality()
                .equals(other._searchedPets, _searchedPets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pets),
      const DeepCollectionEquality().hash(_searchedPets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetDataCopyWith<_$_PetData> get copyWith =>
      __$$_PetDataCopyWithImpl<_$_PetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetDataToJson(
      this,
    );
  }
}

abstract class _PetData implements PetData {
  const factory _PetData({final List<Pet> pets, final List<Pet> searchedPets}) =
      _$_PetData;

  factory _PetData.fromJson(Map<String, dynamic> json) = _$_PetData.fromJson;

  @override
  List<Pet> get pets;
  @override
  List<Pet> get searchedPets;
  @override
  @JsonKey(ignore: true)
  _$$_PetDataCopyWith<_$_PetData> get copyWith =>
      throw _privateConstructorUsedError;
}
