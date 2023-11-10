import 'package:e_commerce/widgets.dart/title_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontsize=30});
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: Duration(seconds: 16),
        baseColor: Colors.purple,
        highlightColor: Colors.red,
        child: TitleTextWidget(
          label: "Shop Smart",
          fontSize: fontsize,
        ));
  }
}
