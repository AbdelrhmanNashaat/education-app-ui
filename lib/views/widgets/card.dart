import 'package:education_app_ui/views/course_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/course_data_model.dart';
import 'text_widget.dart';

class CoursesCard extends StatelessWidget {
  final CourseDataModel courseModel;
  const CoursesCard({super.key, required this.courseModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SafeArea(
                child: CourseView(
                  url: courseModel.url,
                ),
              );
            },
          ),
        );
      },
      child: Container(
        width: 160.w,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20).r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: const Color(0xFFF5F3FF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              courseModel.imagePath,
              width: 90.w,
              height: 90.h,
            ),
            SizedBox(height: 10.h),
            TextWidget(
              text: courseModel.title,
              size: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(0.6),
            ),
            SizedBox(height: 10.h),
            TextWidget(
              text: courseModel.numberOfVideos,
              size: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
