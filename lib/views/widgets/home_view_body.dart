import 'package:flutter/material.dart';

import 'home_view_upper.dart';
import 'lower_body.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        UpperBody(),
        LowerBody(),
      ],
    );
  }
}
