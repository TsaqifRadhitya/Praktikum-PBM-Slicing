import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          spacing: 15,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(LucideIcons.squarePen, color: Colors.transparent),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
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
                Icon(LucideIcons.squarePen, color: Colors.white),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      label: Text(
                        "Search or ask Meta AI",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      fillColor: Colors.grey[900],
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      floatingLabelBehavior: FloatingLabelBehavior.never,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey[900]!,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
