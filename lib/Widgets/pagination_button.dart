import 'package:flutter/material.dart';

class paginationButton extends StatelessWidget {
  const paginationButton({required this.text, required this.ontap});
  final String text;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ontap();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8.0),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
      ),
    );
  }
}
