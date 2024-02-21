import 'package:education_app_ui/models/course_data_model.dart';
import 'package:flutter/material.dart';

import 'card.dart';

class CoursesGridView extends StatelessWidget {
  const CoursesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: CourseDataModel.courses.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.4,
      ),
      itemBuilder: (context, index) {
        return CoursesCard(
          courseModel: CourseDataModel.courses[index],
        );
      },
    );
  }
}
