import 'package:flutter/material.dart';

class CustomRadioUi<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;
  final String leading;
  final String price;
  final String title;
  final String description1;
  final String description2;
  final String description3;



  const CustomRadioUi({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    required this.price,
    required this.title,
    required this.description1,
    required this.description2,
    required this.description3,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 56,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: _customRadioButton,
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffff6624) : Color(0xfffff0e9),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isSelected ? Colors.white : Color(0xffff6624),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Icon(Icons.phone_in_talk),
              Text(price),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(title),
              Text(description1),
              Text(description2),
              Text(description3),
            ],
          ),
        ],
      ),
    );
  }
}
