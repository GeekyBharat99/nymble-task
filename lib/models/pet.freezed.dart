// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
mixin _$Pet {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get breedName => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isMale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res, Pet>;
  @useResult
  $Res call(
      {int id,
      String name,
      String breedName,
      String about,
      String age,
      double price,
      String image,
      bool isMale});
}

/// @nodoc
class _$PetCopyWithImpl<$Res, $Val extends Pet> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breedName = null,
    Object? about = null,
    Object? age = null,
    Object? price = null,
    Object? image = null,
    Object? isMale = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$$_PetCopyWith(_$_Pet value, $Res Function(_$_Pet) then) =
      __$$_PetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String breedName,
      String about,
      String age,
      double price,
      String image,
      bool isMale});
}

/// @nodoc
class __$$_PetCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res, _$_Pet>
    implements _$$_PetCopyWith<$Res> {
  __$$_PetCopyWithImpl(_$_Pet _value, $Res Function(_$_Pet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breedName = null,
    Object? about = null,
    Object? age = null,
    Object? price = null,
    Object? image = null,
    Object? isMale = null,
  }) {
    return _then(_$_Pet(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pet implements _Pet {
  const _$_Pet(
      {required this.id,
      this.name = '',
      this.breedName = '',
      this.about = '',
      this.age = '',
      this.price = 0.0,
      this.image = '',
      this.isMale = false});

  factory _$_Pet.fromJson(Map<String, dynamic> json) => _$$_PetFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String breedName;
  @override
  @JsonKey()
  final String about;
  @override
  @JsonKey()
  final String age;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final bool isMale;

  @override
  String toString() {
    return 'Pet(id: $id, name: $name, breedName: $breedName, about: $about, age: $age, price: $price, image: $image, isMale: $isMale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.breedName, breedName) ||
                other.breedName == breedName) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isMale, isMale) || other.isMale == isMale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, breedName, about, age, price, image, isMale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetCopyWith<_$_Pet> get copyWith =>
      __$$_PetCopyWithImpl<_$_Pet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetToJson(
      this,
    );
  }
}

abstract class _Pet implements Pet {
  const factory _Pet(
      {required final int id,
      final String name,
      final String breedName,
      final String about,
      final String age,
      final double price,
      final String image,
      final bool isMale}) = _$_Pet;

  factory _Pet.fromJson(Map<String, dynamic> json) = _$_Pet.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get breedName;
  @override
  String get about;
  @override
  String get age;
  @override
  double get price;
  @override
  String get image;
  @override
  bool get isMale;
  @override
  @JsonKey(ignore: true)
  _$$_PetCopyWith<_$_Pet> get copyWith => throw _privateConstructorUsedError;
}
