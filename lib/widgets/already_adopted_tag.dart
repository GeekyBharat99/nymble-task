import 'package:flutter/material.dart';
import 'package:nymble/utils/colors.dart';
import 'package:nymble/utils/text_styles.dart';

class AlreadyAdoptedTag extends StatelessWidget {
  const AlreadyAdoptedTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.70),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        "Already Adopted",
        style: AppTextStyles.dmSans.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
