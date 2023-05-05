import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nymble/providers/adopted_pet_provider.dart';
import 'package:nymble/utils/custom_grid_delegate.dart';
import 'package:nymble/utils/text_styles.dart';
import 'package:nymble/widgets/pet_card.dart';

class AdoptedPetHistoryScreen extends ConsumerStatefulWidget {
  static const String route = 'pet_adopted_history_screen';
  const AdoptedPetHistoryScreen({super.key});

  @override
  ConsumerState<AdoptedPetHistoryScreen> createState() =>
      _AdoptedPetHistoryScreenState();
}

class _AdoptedPetHistoryScreenState
    extends ConsumerState<AdoptedPetHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final petsList =
        ref.watch(adoptedPetProvider.select((value) => value.pets));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Pet Adoption History"),
      ),
      body: petsList.isEmpty
          ? Center(
              child: Text(
                "You Have Not Adopted Any Pet Yet.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: 16,
              ),
              itemBuilder: (context, index) => PetCard(
                pet: petsList[index],
                isHistoryPage: true,
              ),
              itemCount: petsList.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                crossAxisCount: MediaQuery.of(context).size.width ~/ 360 + 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                height: 220,
              ),
            ),
    );
  }
}
