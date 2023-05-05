import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nymble/models/pet.dart';
import 'package:nymble/providers/adopted_pet_provider.dart';
import 'package:nymble/screens/details.dart';
import 'package:nymble/utils/colors.dart';
import 'package:nymble/utils/helper_widgets.dart';
import 'package:nymble/utils/text_styles.dart';
import 'package:nymble/widgets/already_adopted_tag.dart';

class PetCard extends ConsumerWidget {
  const PetCard({
    Key? key,
    required this.pet,
    required this.isHistoryPage,
  }) : super(key: key);

  final Pet pet;
  final bool isHistoryPage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdopted = ref.watch(adoptedPetProvider).pets.contains(pet);
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        PetDetailsScreen.route,
        arguments: pet,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.zero,
        borderOnForeground: true,
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Hero(
                    tag: pet.id,
                    child: CachedNetworkImage(
                      height: 120,
                      width: 160,
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
                        height: 120,
                        width: 160,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                if (!isHistoryPage)
                  if (isAdopted) ...[const AlreadyAdoptedTag()],
              ],
            ),
            addVerticalSpace(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                pet.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            addVerticalSpace(2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "\$ ${pet.price}",
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.orange,
                ),
              ),
            ),
            addVerticalSpace(8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                pet.breedName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.dmSans.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            addVerticalSpace(10),
          ],
        ),
      ),
    );
  }
}
