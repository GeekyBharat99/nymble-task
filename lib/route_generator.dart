import 'package:flutter/material.dart';
import 'package:nymble/models/pet.dart';
import 'package:nymble/screens/adopted_pet_history.dart';
import 'package:nymble/screens/details.dart';
import 'package:nymble/screens/photo_viewer.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PetDetailsScreen.route:
        return MaterialPageRoute(
          builder: (_) => PetDetailsScreen(
            pet: args as Pet,
          ),
        );
      case PhotoViewer.route:
        return MaterialPageRoute(
          builder: (_) => PhotoViewer(
            pet: args as Pet,
          ),
        );
      case AdoptedPetHistoryScreen.route:
        return MaterialPageRoute(
          builder: (_) => const AdoptedPetHistoryScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Not Found'),
          ),
          body: const Center(
            child: Text('Not Found'),
          ),
        );
      },
    );
  }
}
