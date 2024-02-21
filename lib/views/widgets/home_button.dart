import 'package:education_app_ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';
import 'text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeView();
            },
          ),
        );
      },
      child: Container(
        width: 200.h,
        height: 42.h,
        decoration: BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: TextWidget(
            text: 'Get Started',
            size: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
