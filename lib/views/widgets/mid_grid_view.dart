import 'package:flutter/material.dart';

import '../../models/intro_model.dart';
import 'middle_grid_view_item.dart.dart';

class CustomCategoriesGrid extends StatelessWidget {
  const CustomCategoriesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return CustomMiddleSliverGridViewItem(
          categoriesModel: CategoriesModel.categories[index],
        );
      },
    );
  }
}
