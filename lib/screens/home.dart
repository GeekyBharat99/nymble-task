import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nymble/providers/pets_provider.dart';
import 'package:nymble/screens/adopted_pet_history.dart';
import 'package:nymble/utils/colors.dart';
import 'package:nymble/utils/custom_grid_delegate.dart';
import 'package:nymble/utils/text_styles.dart';
import 'package:nymble/widgets/pet_card.dart';
import 'package:nymble/widgets/search_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ScrollController? _scrollViewController;

  @override
  Widget build(BuildContext context) {
    final petsList =
        ref.watch(petsProvider.select((value) => value.searchedPets));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightPurple,
        title: Text(
          "Hello Hooman",
          style: AppTextStyles.dmSans.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AdoptedPetHistoryScreen.route);
            },
            iconSize: 30,
            icon: const Icon(
              Icons.history_rounded,
            ),
          )
        ],
      ),
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              title: const SearchBar(),
              titleSpacing: 16,
              elevation: 0.0,
              floating: true,
              centerTitle: true,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        floatHeaderSlivers: true,
        body: GridView.builder(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 0,
            bottom: 16,
          ),
          itemBuilder: (context, index) => PetCard(
            pet: petsList[index],
            isHistoryPage: false,
          ),
          itemCount: petsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
            crossAxisCount: MediaQuery.of(context).size.width ~/ 360 + 1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            height: 220,
          ),
        ),
      ),
    );
  }
}
