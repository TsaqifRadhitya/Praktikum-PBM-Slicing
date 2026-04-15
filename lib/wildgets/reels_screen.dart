import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ReelsScreen extends StatelessWidget {
  ReelsScreen({super.key});

  final contens = [
    "https://images.pexels.com/photos/32166263/pexels-photo-32166263/free-photo-of-pemandangan-gunung-bromo-yang-menakjubkan-saat-matahari-terbit.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.unsplash.com/photo-1736523298962-b4e251ab5808?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://img.freepik.com/foto-gratis/matahari-terbit-di-atas-kabut-pagi-di-phu-lang-ka-phayao-di-thailand_335224-803.jpg?semt=ais_hybrid&w=740&q=80",
    "https://img.freepik.com/foto-gratis/matahari-terbit-di-atas-kabut-pagi-di-phu-lang-ka-phayao-di-thailand_335224-803.jpg?semt=ais_hybrid&w=740&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 60,
            width: double.infinity,
            child: PageView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        index > contens.length - 1
                            ? contens[contens.length - 1 % index]
                            : contens[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              spacing: 7,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      50,
                                    ),
                                    child: Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png",
                                    ),
                                  ),
                                ),
                                Text(
                                  "Wahyu",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(8),
                                      ),
                                    ),
                                    minimumSize: WidgetStatePropertyAll(
                                      Size.zero,
                                    ),
                                    padding: WidgetStatePropertyAll(
                                      EdgeInsets.symmetric(
                                        vertical: 2.5,
                                        horizontal: 10,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 20,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 26,
                                ),
                                Text(
                                  "Likes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  LucideIcons.messageCircle,
                                  color: Colors.white,
                                  size: 26,
                                ),
                                Text(
                                  "75",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              LucideIcons.repeat,
                              color: Colors.white,
                              size: 26,
                            ),
                            Icon(
                              LucideIcons.send,
                              color: Colors.white,
                              size: 26,
                            ),
                            Icon(
                              LucideIcons.ellipsis,
                              color: Colors.white,
                              size: 26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add, color: Colors.white, size: 26),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      "Reels",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    Text(
                      "Friends",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.add, color: Colors.transparent),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
