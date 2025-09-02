import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final int totalQuantity;
  final TextEditingController controller;

  const ItemCard({
    super.key,
    required this.itemName,
    required this.totalQuantity,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(itemName),
        trailing: SizedBox(
          width: 100,
          child: DropdownMenu(
            controller: controller,
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            menuHeight: 250,
            dropdownMenuEntries: List.generate(
              totalQuantity + 1,
              (index) =>
                  DropdownMenuEntry(value: index, label: index.toString()),
            ),
          ),
        ),
      ),
    );
  }
}
