import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add, color: Colors.white),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5,
                    children: [
                      Icon(Icons.lock_outline, color: Colors.white),
                      Text(
                        "unblast",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    ],
                  ),
                  Icon(Icons.menu, color: Colors.white),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(1000),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRizICXbCjEhCREhEVDfk6EohpUuy-tsCKUcQ&s",
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5,
                          children: [
                            Text(
                              "Unblast",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "371",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "posts",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "14.4K",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "followers",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "272",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "following",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "E-commerce Website",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "Selective free resource for designers @unblast.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Melbourne, Victoria, Australia",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 30,
                      child: Row(
                        spacing: 5,
                        children: [
                          Expanded(
                            flex: 4,
                            child: FilledButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Colors.grey[850],
                                ),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8,
                                    ),
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Edit profile",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: FilledButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Colors.grey[850],
                                ),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8,
                                    ),
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: FilledButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Colors.grey[850],
                                ),
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.all(0),
                                ),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8,
                                    ),
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Icon(Icons.person_add_outlined),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          10,
                          (index) => index == 0
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.grey[850]!,
                                        ),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  spacing: 2.5,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      padding: EdgeInsets.all(3.5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 4,
                                          color: Colors.grey[800]!,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          1000,
                                        ),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Text ${index + 1}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Icon(Icons.grid_view_rounded, color: Colors.white),
                    Container(
                      height: 2,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Icon(Icons.grid_view_rounded, color: Colors.white),
                    Container(
                      height: 1.5,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.transparent),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Icon(Icons.grid_view_rounded, color: Colors.white),
                    Container(
                      height: 1.5,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.transparent),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Icon(Icons.grid_view_rounded, color: Colors.white),
                    Container(
                      height: 1.5,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.transparent),
                    ),
                  ],
                ),
              ],
            ),
            GridView.builder(
              itemCount: 9,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) => Image.network(
                "https://images.pexels.com/photos/32166263/pexels-photo-32166263/free-photo-of-pemandangan-gunung-bromo-yang-menakjubkan-saat-matahari-terbit.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
