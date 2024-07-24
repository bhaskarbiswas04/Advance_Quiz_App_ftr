import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({super.key, required this.option, required this.onTap});

  final String option;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 237, 103, 147),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
      child: Text(
        option,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
