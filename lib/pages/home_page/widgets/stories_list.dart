import 'package:flutter/material.dart';
import 'package:responsive2/pages/home_page/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      margin: EdgeInsets.symmetric(vertical: mobile ? 15 : 35),
      height: 110,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: 15),
        itemCount: 15,
        itemBuilder: (_, i) => StoryCircle(),
      ),
    );
  }
}
