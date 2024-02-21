import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';
import 'text_widget.dart';

class CustomAppBarChild extends StatelessWidget {
  const CustomAppBarChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.dashboard,
                color: kWhiteColor,
                size: 32,
              ),
              Icon(
                Icons.notifications,
                color: kWhiteColor,
                size: 32,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          const TextWidget(
            text: 'Hi, Programmer',
            size: 28,
            fontWeight: FontWeight.w500,
            color: kWhiteColor,
          ),
          SizedBox(height: 15.h),
          SizedBox(
            height: 48.h,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.5),
                  size: 28,
                ),
                fillColor: kWhiteColor,
                filled: true,
                hintText: 'Search here...',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
                focusedBorder: borderStyle(),
                enabledBorder: borderStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.black.withOpacity(0.5),
      ),
    );
  }
}
