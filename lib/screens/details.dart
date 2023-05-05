import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nymble/models/pet.dart';
import 'package:nymble/providers/adopted_pet_provider.dart';
import 'package:nymble/screens/photo_viewer.dart';
import 'package:nymble/utils/colors.dart';
import 'package:nymble/utils/helper_widgets.dart';
import 'package:nymble/utils/text_styles.dart';
import 'package:nymble/widgets/info.dart';
import 'package:nymble/widgets/pet_adopted_dialog.dart';

class PetDetailsScreen extends ConsumerWidget {
  static const String route = 'pet_details_screen';
  const PetDetailsScreen({
    super.key,
    required this.pet,
  });

  final Pet pet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdopted = ref.watch(adoptedPetProvider).pets.contains(pet);
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () =>
                Navigator.pushNamed(context, PhotoViewer.route, arguments: pet),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Hero(
                tag: pet.id,
                child: CachedNetworkImage(
                  height: 300,
                  width: 375,
                  imageUrl: pet.image,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => Image.asset(
                    "assets/cupertino_activity_indicator.gif",
                    height: 300,
                    width: 375,
                    fit: BoxFit.cover,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Info(subTitle: pet.age, title: "Age"),
                    Info(
                        subTitle: "\$ ${pet.price.toString()}", title: "Price"),
                    Info(
                      subTitle: pet.isMale ? "Male" : "Female",
                      title: "Sex",
                    )
                  ],
                ),
                addVerticalSpace(20),
                Text(
                  pet.name,
                  style: AppTextStyles.dmSans.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Text(
                  pet.breedName,
                  style: AppTextStyles.dmSans.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                addVerticalSpace(12),
                Text(
                  "About",
                  style: AppTextStyles.dmSans.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Text(
                  pet.about,
                  style: AppTextStyles.dmSans.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                addVerticalSpace(30),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextButton.icon(
            onPressed: isAdopted
                ? null
                : () {
                    ref.read(adoptedPetProvider.notifier).adoptPet(pet: pet);
                    showDialog(
                      context: context,
                      builder: (context) => PetAdoptedDialog(pet: pet),
                    );
                  },
            style: TextButton.styleFrom(
              backgroundColor: isAdopted ? Colors.grey : AppColors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            icon: const Icon(
              Icons.pets,
              color: AppColors.white,
            ),
            label: Text(
              isAdopted ? "Already Adopted" : "Adopt Me",
              style: AppTextStyles.dmSans.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
