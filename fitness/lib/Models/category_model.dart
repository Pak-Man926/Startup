import 'package:flutter/material.dart';

class CategoryModel 
{
   String name;
   String image;
   Color boxColor;

  CategoryModel({
    required this.name,
    required this.image,
    required this.boxColor,
  });

  static List<CategoryModel> getCategory()
  {
    List <CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: "Salad",
        image: "assets/icons/salad-svgrepo-com.svg",
        boxColor: Color(0xff92A3FD),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Cake",
        image: "assets/icons/cake-tall-svgrepo-com.svg",
        boxColor: Color(0xffC58BF2),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Pie",
        image: "assets/icons/pie-svgrepo-com.svg",
        boxColor: Color(0xff92A3FD),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Smoothies",
        image: "assets/icons/juice-svgrepo-com.svg",
        boxColor: Color(0xffC58BF2),
      ),
    );

    return categories;
  }
}