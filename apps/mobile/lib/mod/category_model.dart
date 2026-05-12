import 'package:flutter/animation.dart';

class CategoryModel {
  String name;
  String imageUrl;
  Color  boxColor;

  CategoryModel({
    required this.name,
    required this.imageUrl,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Orange Snacks',
        imageUrl: 'assets/icons/orange-snacks.svg',
        boxColor: Color(0xff92a3fd),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'Pancakes',
        imageUrl: 'assets/icons/pancakes.svg',
        boxColor: Color(0xffc58bf2),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'Plate',
        imageUrl: 'assets/icons/plate.svg',
        boxColor: Color(0xff92a3fd),
      ),
    );

    categories.add(
      CategoryModel(
        name: 'Pie',
        imageUrl: 'assets/icons/pie.svg',
        boxColor: Color(0xffc58bf2),
      ),
    );

    return categories;
  }
}
