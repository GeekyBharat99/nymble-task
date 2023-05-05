// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pet _$$_PetFromJson(Map<String, dynamic> json) => _$_Pet(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      breedName: json['breedName'] as String? ?? '',
      about: json['about'] as String? ?? '',
      age: json['age'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      image: json['image'] as String? ?? '',
      isMale: json['isMale'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PetToJson(_$_Pet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'breedName': instance.breedName,
      'about': instance.about,
      'age': instance.age,
      'price': instance.price,
      'image': instance.image,
      'isMale': instance.isMale,
    };
