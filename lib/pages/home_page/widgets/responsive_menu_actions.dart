import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  const ResponsiveMenuActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.smallerThan(name: TABLET)
          ],
          child: IconButton(onPressed: (){}, icon: const Icon( Icons.search)),
        ),
        const SizedBox(width: 4),
        IconButton(onPressed: (){}, icon: const Icon( Icons.home)),
        const SizedBox(width: 4),
        IconButton(onPressed: (){}, icon: const Icon( Icons.send)),
        const SizedBox(width: 4),
        IconButton(onPressed: (){}, icon: const Icon( Icons.favorite_border)),
        const SizedBox(width: 16),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              "https://media-exp1.licdn.com/dms/image/D5603AQH79cSqpFMwIQ/profile-displayphoto-shrink_100_100/0/1647800735115?e=1653523200&v=beta&t=kpfuRnrsaJSaeWAq6VVyne5pU6NcCexOrdfCVShPIeU"
          ),
        )
      ],
    );
  }
}
