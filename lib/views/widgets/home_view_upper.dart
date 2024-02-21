import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../assets.dart';
import '../../constant.dart';

class UpperBody extends StatelessWidget {
  const UpperBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.sw,
      height: 450.h,
      decoration: const BoxDecoration(
        color: kWhiteColor,
      ),
      child: Container(
        width: double.infinity.sw,
        height: 450.h,
        decoration: BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(70.r),
          ),
        ),
        child: Center(
          child: Image.asset(Assets.bookImage),
        ),
      ),
    );
  }
}
