import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contens = [
      "https://images.pexels.com/photos/32166263/pexels-photo-32166263/free-photo-of-pemandangan-gunung-bromo-yang-menakjubkan-saat-matahari-terbit.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://images.unsplash.com/photo-1736523298962-b4e251ab5808?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://img.freepik.com/foto-gratis/matahari-terbit-di-atas-kabut-pagi-di-phu-lang-ka-phayao-di-thailand_335224-803.jpg?semt=ais_hybrid&w=740&q=80",
    ];
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12.5,
              ),
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    label: Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    fillColor: Colors.grey[900],
                    prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey[900]!,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 1.5,
                crossAxisSpacing: 1.5,
              ),
              itemCount: 21,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(contens[index % contens.length]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
