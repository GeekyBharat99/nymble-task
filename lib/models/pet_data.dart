import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nymble/models/pet.dart';

part 'pet_data.freezed.dart';
part 'pet_data.g.dart';

@freezed
class PetData with _$PetData {
  const factory PetData({
    @Default([]) List<Pet> pets,
    @Default([]) List<Pet> searchedPets,
  }) = _PetData;

  factory PetData.fromJson(Map<String, dynamic> json) =>
      _$PetDataFromJson(json);
}
