import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/D5603AQH79cSqpFMwIQ/profile-displayphoto-shrink_100_100/0/1647800735115?e=1653523200&v=beta&t=kpfuRnrsaJSaeWAq6VVyne5pU6NcCexOrdfCVShPIeU",
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    "Luan de Souza",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
              "https://images.pexels.com/photos/209652/pexels-photo-209652.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.white,
                ),
                const SizedBox(width: 4),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                  color: Colors.white,
                ),
                const SizedBox(width: 4),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  color: Colors.white,
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Curtido por Luan Souza e outras 500 pessoas",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "HÁ 1 HORA",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
          ),
          if(desktop) ...[
            const Divider(color: Colors.white),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: "Adicione um comentário",
                        hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text("Publicar"),
                )
              ],
            ),
          ],
        ],
      ),
    );
  }
}
