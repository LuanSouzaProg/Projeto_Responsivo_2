import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 62,
            width: 62,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/D5603AQH79cSqpFMwIQ/profile-displayphoto-shrink_100_100/0/1647800735115?e=1653523200&v=beta&t=kpfuRnrsaJSaeWAq6VVyne5pU6NcCexOrdfCVShPIeU"),
            ),
          ),
        ),
        const Text(
          "Luan Souza",
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
