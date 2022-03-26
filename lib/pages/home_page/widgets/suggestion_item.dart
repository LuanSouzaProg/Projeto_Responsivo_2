import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/D5603AQH79cSqpFMwIQ/profile-displayphoto-shrink_100_100/0/1647800735115?e=1653523200&v=beta&t=kpfuRnrsaJSaeWAq6VVyne5pU6NcCexOrdfCVShPIeU"),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "LuanSouza",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Luan de Souza",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                "Sair",
                style: TextStyle(
                  color: Color(0xFF0396F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
