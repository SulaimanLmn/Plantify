import 'package:flutter/material.dart';
import 'package:plantify/models/Category.dart';

class PlantChipCategories extends StatefulWidget {
  const PlantChipCategories({super.key});

  @override
  State<PlantChipCategories> createState() => _PlantChipCategoriesState();
}

class _PlantChipCategoriesState extends State<PlantChipCategories> {
  List<Category> categories = [
    Category(label: "Top Pick"),
    Category(label: "Indoor"),
    Category(label: "Outdoor"),
    Category(label: "Seeds"),
    Category(label: "Plant"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Category category = categories[index];
            return Column(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      for (var category in categories) {
                        category.isSelected = false;
                      }
                      category.isSelected = !category.isSelected;
                    });
                  },
                  child: Text(
                    category.label,
                    style: TextStyle(
                      color: category.isSelected != true
                          ? Colors.black
                          : Colors.green,
                      fontSize: 18,
                      fontWeight: category.isSelected != true
                          ? FontWeight.w500
                          : FontWeight.w600,
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  indent: 10,
                  endIndent: 15,
                  color: Colors.green,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
          itemCount: categories.length),
    );
  }
}
