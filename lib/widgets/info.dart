import 'package:flutter/material.dart';
import 'package:nymble/utils/helper_widgets.dart';
import 'package:nymble/utils/text_styles.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.subTitle,
    required this.title,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xffEFEFF0),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.dmSans.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          addHorizontalSpace(2),
          Text(
            subTitle,
            style: AppTextStyles.dmSans.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
