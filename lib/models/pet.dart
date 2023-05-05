import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@freezed
class Pet with _$Pet {
  const factory Pet({
    required int id,
    @Default('') String name,
    @Default('') String breedName,
    @Default('') String about,
    @Default('') String age,
    @Default(0.0) double price,
    @Default('') String image,
    @Default(false) bool isMale,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}
