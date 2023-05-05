import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/pets_provider.dart';

class SearchBar extends ConsumerWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 50,
      child: Center(
        child: TextField(
          onChanged: (value) {
            ref.read(petsProvider.notifier).search(query: value);
          },
          decoration: InputDecoration(
            constraints: const BoxConstraints(),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffEFEFF0),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Search',
            isDense: true,
          ),
        ),
      ),
    );
  }
}
