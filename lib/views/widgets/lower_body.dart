import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';
import 'lower_body_child.dart';

class LowerBody extends StatelessWidget {
  const LowerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 240.1.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kBlueColor,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70.r),
            ),
          ),
          child: const LoweBodyChild(),
        ),
      ),
    );
  }
}
