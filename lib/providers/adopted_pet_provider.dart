import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nymble/models/pet.dart';
import 'package:nymble/models/pet_data.dart';

final adoptedPetProvider =
    StateNotifierProvider<AdoptedPetNotifier, PetData>((ref) {
  return AdoptedPetNotifier();
});

class AdoptedPetNotifier extends StateNotifier<PetData> {
  AdoptedPetNotifier()
      : super(GetStorage().read('adopted_pets') != null
            ? PetData.fromJson(GetStorage().read('adopted_pets'))
            : const PetData());

  void adoptPet({
    required Pet pet,
  }) {
    state = state.copyWith(pets: [...state.pets, pet]);

    GetStorage().write('adopted_pets', state);
  }
}
