import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant.dart';

class VideoViewWidget extends StatelessWidget {
  final String imagePath;
  const VideoViewWidget({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.sw,
      height: 190.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F3FF),
        borderRadius: BorderRadius.circular(16).r,
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(imagePath),
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: kWhiteColor,
              radius: 26.r,
              child: const Icon(
                FontAwesomeIcons.play,
                color: kBlueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
