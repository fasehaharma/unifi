import 'package:flutter/material.dart';

class AddOnRadioBoxView extends StatelessWidget {
  const AddOnRadioBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white70,
        ),
      ),
    );
  }
}
