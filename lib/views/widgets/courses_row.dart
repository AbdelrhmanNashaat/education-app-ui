import 'package:flutter/material.dart';

import '../../constant.dart';
import 'text_widget.dart';

class CoursesRow extends StatelessWidget {
  const CoursesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: 'Courses',
            size: 22,
            fontWeight: FontWeight.bold,
          ),
          TextWidget(
            text: 'See All',
            size: 18,
            fontWeight: FontWeight.w600,
            color: kBlueColor,
          ),
        ],
      ),
    );
  }
}
