import 'package:education_app_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_bar_child.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity.sw,
        height: 180.h,
        decoration: BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(25).r,
            bottomRight: const Radius.circular(25).r,
          ),
        ),
        child: const CustomAppBarChild(),
      ),
    );
  }
}
