import 'package:flutter/material.dart';
import 'package:nymble/models/pet.dart';
import 'package:nymble/utils/text_styles.dart';
import 'package:confetti/confetti.dart';

class PetAdoptedDialog extends StatefulWidget {
  const PetAdoptedDialog({Key? key, required this.pet}) : super(key: key);

  final Pet pet;

  @override
  State<PetAdoptedDialog> createState() => _PetAdoptedDialogState();
}

class _PetAdoptedDialogState extends State<PetAdoptedDialog> {
  ConfettiController controllerCenter =
      ConfettiController(duration: const Duration(seconds: 3));

  @override
  void initState() {
    controllerCenter.play();
    super.initState();
  }

  @override
  void dispose() {
    controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            "Adopted 🥳🥳",
            textAlign: TextAlign.center,
            style: AppTextStyles.dmSans.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: controllerCenter,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ],
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Text(
        "Congratulations, You’ve now adopted ${widget.pet.name}.",
        textAlign: TextAlign.center,
        style: AppTextStyles.dmSans.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
