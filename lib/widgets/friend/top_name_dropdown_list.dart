import 'package:flutter/material.dart';
import '../texts/title_widget.dart';

class TopNameDropDownList extends StatelessWidget {
  final String name;
  final IconData? icon;

  const TopNameDropDownList({super.key, required this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleWidget(
          label: name,
          fontSize: 16,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Theme.of(context).textTheme.titleLarge?.color,
            size: 30,
          ),
        ),
      ],
    );
  }
}