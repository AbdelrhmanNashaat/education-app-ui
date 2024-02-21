import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';
import '../../models/intro_model.dart';
import 'text_widget.dart';

class CustomMiddleSliverGridViewItem extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const CustomMiddleSliverGridViewItem({
    super.key,
    required this.categoriesModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: categoriesModel.color,
          radius: 30.r,
          child: Icon(
            categoriesModel.icon,
            color: kWhiteColor,
            size: 30,
          ),
        ),
        SizedBox(height: 5.h),
        TextWidget(
          text: categoriesModel.text,
          size: 18,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
