import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_button.dart';
import 'text_widget.dart';

class LoweBodyChild extends StatelessWidget {
  const LoweBodyChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30.h),
        const TextWidget(
          text: 'Learning is Everything',
          size: 28,
          fontWeight: FontWeight.w500,
          color: Colors.deepPurple,
        ),
        SizedBox(height: 5.h),
        TextWidget(
          text:
              'Learning With Pleaser with dear\nProgrammer, Wherever you are.',
          size: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.5),
        ),
        SizedBox(height: 25.h),
        const CustomButton()
      ],
    );
  }
}
