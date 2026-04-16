import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add, color: Colors.white, size: 28),
                  Row(
                    children: [
                      Text(
                        "Instagram",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          fontFamily: 'Billabong',
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    ],
                  ),
                  Icon(Icons.favorite_border, color: Colors.white, size: 28),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return StoryItem(
                            username: index == 0 ? "Your story" : "user_$index",
                            isYourStory: index == 0,
                            hasStory: index != 0,
                          );
                        },
                      ),
                    ),
                    Divider(color: Colors.grey[900], thickness: 0.5),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return PostItem(index: index);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final String username;
  final bool isYourStory;
  final bool hasStory;

  const StoryItem({
    super.key,
    required this.username,
    this.isYourStory = false,
    this.hasStory = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: hasStory
                      ? LinearGradient(
                          colors: [
                            Color(0xFFFBAA47),
                            Color(0xFFD91A46),
                            Color(0xFFA60F93),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        )
                      : null,
                  border: !hasStory
                      ? Border.all(color: Colors.grey[800]!, width: 2)
                      : null,
                ),
                padding: EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.all(3),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey[800],
                    child: Icon(Icons.person, color: Colors.grey[600]),
                  ),
                ),
              ),
              if (isYourStory)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: Color(0xFF0095F6),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 14),
                  ),
                ),
            ],
          ),
          SizedBox(height: 6),
          SizedBox(
            width: 70,
            child: Text(
              username,
              style: TextStyle(color: Colors.white, fontSize: 12),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final int index;

  const PostItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Post Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFBAA47),
                      Color(0xFFD91A46),
                      Color(0xFFA60F93),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.all(2),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.grey[800],
                    child: Icon(
                      Icons.person,
                      color: Colors.grey[600],
                      size: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "username_$index",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    if (index % 2 == 0)
                      Text(
                        "Location",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                  ],
                ),
              ),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 400,
          color: Colors.grey[900],
          child: Center(
            child: Icon(Icons.image, color: Colors.grey[700], size: 80),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.white, size: 28),
              SizedBox(width: 16),
              Icon(Icons.chat_bubble_outline, color: Colors.white, size: 26),
              SizedBox(width: 16),
              Icon(Icons.send_outlined, color: Colors.white, size: 26),
              Spacer(),
              Icon(Icons.bookmark_border, color: Colors.white, size: 28),
            ],
          ),
        ),

        // Likes
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "${1234 + index * 100} likes",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "username_$index ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                TextSpan(
                  text:
                      "This is a sample caption for post $index. #flutter #instagram",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          child: Text(
            "View all ${15 + index * 3} comments",
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          child: Text(
            "${index + 1} hours ago",
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
        ),

        SizedBox(height: 12),
      ],
    );
  }
}
