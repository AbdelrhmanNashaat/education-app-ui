import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'courses_grid_view.dart';
import 'courses_row.dart';
import 'custom_app_bar_widget.dart';
import 'mid_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const CustomAppBarWidget(),
        SliverToBoxAdapter(child: SizedBox(height: 30.h)),
        const CustomCategoriesGrid(),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          sliver: const CoursesRow(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 10.h)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          sliver: const CoursesGridView(),
        ),
      ],
    );
  }
}
