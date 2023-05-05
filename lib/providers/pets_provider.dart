import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nymble/models/pet_data.dart';
import 'package:nymble/utils/data.dart';

final petsProvider =
    StateNotifierProvider.autoDispose<PetsNotifier, PetData>((ref) {
  return PetsNotifier(ref);
});

class PetsNotifier extends StateNotifier<PetData> {
  PetsNotifier(AutoDisposeStateNotifierProviderRef incomingRef)
      : super(PetData(
          pets: pets,
          searchedPets: pets,
        )) {
    ref = incomingRef;
  }

  late AutoDisposeStateNotifierProviderRef ref;

  void search({required String query}) {
    state = state.copyWith(
      searchedPets: state.pets.where((element) {
        final title = element.name.toLowerCase();
        final input = query.toLowerCase();
        return title.contains(input);
      }).toList(),
    );
  }
}
