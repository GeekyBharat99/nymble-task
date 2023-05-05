
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetData _$$_PetDataFromJson(Map<String, dynamic> json) => _$_PetData(
      pets: (json['pets'] as List<dynamic>?)
              ?.map((e) => Pet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searchedPets: (json['searchedPets'] as List<dynamic>?)
              ?.map((e) => Pet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PetDataToJson(_$_PetData instance) =>
    <String, dynamic>{
      'pets': instance.pets,
      'searchedPets': instance.searchedPets,
    };
